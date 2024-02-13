import 'dart:async';

import 'package:clinica_de_alternativo/core/core.dart';
import 'package:clinica_de_alternativo/core/extensions.dart';
import 'package:clinica_de_alternativo/core/models/paginate.dart';
import 'package:clinica_de_alternativo/src/account/data/models/branch.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/core/params.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/data/model/sales_report_documents.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/domain/sales_reporting_usecases.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/data/model/sales_report.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'sales_reporting_event.dart';
part 'sales_reporting_state.dart';
part 'sales_reporting_bloc.freezed.dart';

class SalesReportingBloc extends Bloc<SalesReportingEvent, SalesReportingState> {
  final _sendReportUseCase = GetIt.instance<SendReportUseCase>();
  final _onFetchReportUseCase = GetIt.instance<OnFetchReportsUseCase>();

  SalesReportingBloc() : super(SalesReportingState(salesReportDocs: const SalesReportDocuments(paginate: Paginate()))) {

    on<_OnFetchReport>(_onFetchReport);
    on<_OnSendReport>(_sendReport);
  }

  FutureOr<void> _sendReport(_OnSendReport event, Emitter<SalesReportingState> emit)async {
    emit(state.copyWith(status: SalesReportingStatus.loading));
    
    final dataOrError = await _sendReportUseCase(event.salesReport);
    
    dataOrError.fold((l){
      emit(state.copyWith(status: SalesReportingStatus.failed, message: l.getMessage()));
    }, (salesReports){
      final dateNow = DateTime.now();

      /// From date today 12:00 AM
      final from = DateTime(dateNow.year, dateNow.month, dateNow.day, 0, 0, 0);
      /// To date today 11:59 PM
      final to = DateTime(dateNow.year, dateNow.month, dateNow.day, 23, 59, 59);

      final salesTransactionDate = (salesReports.transactionDate as Timestamp).toDate();

      SalesReportDocuments? salesDocs;
      if(state.salesReportDocs != null) {
        final reports = [...state.salesReportDocs!.salesReports];
        if((salesTransactionDate.millisecondsSinceEpoch >= from.millisecondsSinceEpoch &&
            salesTransactionDate.millisecondsSinceEpoch <= to.millisecondsSinceEpoch)){
          /// Add the transaction to the list if it matches the current date
          reports.add(salesReports);
        }
        salesDocs = state.salesReportDocs?.copyWith(salesReports: reports);
      }

      emit(state.copyWith(status: SalesReportingStatus.success, message: 'Sales report posted successfully', salesReportDocs: salesDocs));
    });
  }

  FutureOr<void> _onFetchReport(_OnFetchReport event, Emitter<SalesReportingState> emit)async {
    emit(state.copyWith(
      status: event.paginateFromLastDoc == null? SalesReportingStatus.loadingReportsList : state.status,
      loadingMoreItems: event.paginateFromLastDoc != null,
    ));

    final dataOrError = await _onFetchReportUseCase(FetchSalesReportsParam(
      salesReportingFilterParam: SalesReportingFilterParam(branch: event.branch),
      paginate: state.salesReportDocs!.paginate!.copyWith(lastVisibleDocument: event.paginateFromLastDoc),
    ));

    dataOrError.fold((l){
      emit(state.copyWith(status: SalesReportingStatus.failed, message: l.getMessage(), loadingMoreItems: false));
    }, (docs){
      final salesList = [...state.salesReportDocs!.salesReports];
      salesList.addAll(docs.salesReports);

      emit(state.copyWith(
        status: SalesReportingStatus.success,
        message: 'Sales report fetched successfully',
        loadingMoreItems: false,
        salesReportDocs: state.salesReportDocs!.copyWith(
          salesReports: salesList,
          paginate: docs.paginate,
        ),
      ));
    });
  }
}

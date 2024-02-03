import 'package:clinica_de_alternativo/core/core.dart';
import 'package:clinica_de_alternativo/core/models/paginate.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/data/model/sales_report_documents.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/core/params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../data/model/sales_report.dart';
import '../../../domain/sales_reporting_usecases.dart';

part 'sales_report_generator_event.dart';
part 'sales_report_generator_state.dart';
part 'sales_report_generator_bloc.freezed.dart';

class SalesReportGeneratorBloc extends Bloc<SalesReportGeneratorEvent, SalesReportGeneratorState> {
  final _onFetchReportUseCase = GetIt.instance<OnFetchReportsUseCase>();

  SalesReportGeneratorBloc() : super(SalesReportGeneratorState(salesReportDocs: const SalesReportDocuments(paginate: Paginate()))) {
    on<_OnGenerateReport>((event, emit)async {
      emit(state.copyWith(status: SalesGeneratorStatus.loading));

      final dataOrError = await _onFetchReportUseCase(event.param);

      dataOrError.fold((l){
        emit(state.copyWith(status: SalesGeneratorStatus.failed, message: l.when(firebase: (error) => error.message!,)));
      }, (doc){
        emit(state.copyWith(status: SalesGeneratorStatus.success, message: 'Sales report fetched successfully', salesReportDocs: doc));
      });
    });
  }
}

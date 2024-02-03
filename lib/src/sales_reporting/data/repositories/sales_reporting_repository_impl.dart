import 'package:clinica_de_alternativo/src/sales_reporting/data/datasources/datasource.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/data/model/sales_report.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/data/model/sales_report_documents.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failure.dart';
import '../../core/params.dart';
import '../../domain/repositories/sales_report_repository.dart';

class SalesReportingRepositoryImpl extends SalesReportRepository {
  SalesReportingRepositoryImpl({
    required SalesReportingDatasource salesReportDataSource,
  }) : super(
          salesReportingDatasource: salesReportDataSource,
        );

  @override
  Future<Either<Failure, SalesReport>> sendSalesReport(SalesReport report)async {
    try{
      final dataState = await salesReportingDatasource.sendSalesReport(report);
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }

  @override
  Future<Either<Failure, SalesReportDocuments>> onFetchReports(FetchSalesReportsParam param)async {
    try{
      final dataState = await salesReportingDatasource.onFetchReports(param);
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }
}

import 'package:clinica_de_alternativo/src/sales_reporting/data/datasources/datasource.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/data/model/sales_report.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failure.dart';

abstract class SalesReportRepository{
  final SalesReportingDatasource salesReportingDatasource;
  SalesReportRepository({required this.salesReportingDatasource});

  Future<Either<Failure, bool>> sendSalesReport(SalesReport report);
}
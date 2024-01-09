part of 'datasource.dart';

abstract class SalesReportingDatasource{
  SalesReportingDatasource();

  Future<bool> sendSalesReport(SalesReport report);
}
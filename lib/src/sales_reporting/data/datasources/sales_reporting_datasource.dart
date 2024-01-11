part of 'datasource.dart';

abstract class SalesReportingDatasource{
  SalesReportingDatasource();

  Future<SalesReport> sendSalesReport(SalesReport report);
  Future<List<SalesReport>> onFetchReports();
}
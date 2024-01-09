part of 'datasource.dart';

abstract class SalesReportingDatasource{
  SalesReportingDatasource();

  Future<List<SalesReport>> sendSalesReport(SalesReport report);
  Future<List<SalesReport>> onFetchReports();
}
part of 'datasource.dart';

class SaleReportingDatasourceImpl extends SalesReportingDatasource{
  @override
  Future<bool> sendSalesReport(SalesReport report)async {
    await FirebaseFirestore.instance.collection('sales_reports').add(report.toJson());
    return true;
  }
}
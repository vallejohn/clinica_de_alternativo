part of 'datasource.dart';

class SaleReportingDatasourceImpl extends SalesReportingDatasource{

  @override
  Future<List<SalesReport>> sendSalesReport(SalesReport report)async {
    await FirestoreCollection.salesReports().add(report.toJson());
    final result = await FirestoreCollection.salesReports().get();

    return result.docs.map((e) => SalesReport.fromJson(e.data())).toList();
  }

  @override
  Future<List<SalesReport>> onFetchReports()async {
    final result = await FirestoreCollection.salesReports().get();
    return result.docs.map((e) => SalesReport.fromJson(e.data())).toList();
  }
}
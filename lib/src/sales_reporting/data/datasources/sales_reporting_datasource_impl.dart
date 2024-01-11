part of 'datasource.dart';

class SaleReportingDatasourceImpl extends SalesReportingDatasource{

  final _log = AppLogger('SaleReportingDatasourceImpl');

  @override
  Future<SalesReport> sendSalesReport(SalesReport report)async {

    final productMap = report.product!.toJson();
    Map<String, dynamic> reportMap = report.copyWith(transactionId: const Uuid().v1()).toJson();

    reportMap.remove('product');
    reportMap.addAll({'product': productMap});

    await FirestoreCollection.salesReports().add(reportMap);
    return SalesReport.fromJson(reportMap);
  }

  @override
  Future<List<SalesReport>> onFetchReports()async {
    final result = await FirestoreCollection.salesReports().get();
    return result.docs.map((e) => SalesReport.fromJson(e.data())).toList();
  }
}
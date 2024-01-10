part of 'datasource.dart';

class SaleReportingDatasourceImpl extends SalesReportingDatasource{

  final _log = AppLogger('SaleReportingDatasourceImpl');

  @override
  Future<List<SalesReport>> sendSalesReport(SalesReport report)async {

    final productMap = report.product!.toJson();
    Map<String, dynamic> reportMap = report.copyWith(transactionId: const Uuid().v1()).toJson();

    _log.d(reportMap);
    reportMap.remove('product');
    reportMap.addAll({'product': productMap});
    _log.d(productMap);
    _log.d(reportMap);

    await FirestoreCollection.salesReports().add(reportMap);
    final result = await FirestoreCollection.salesReports().get();

    return result.docs.map((e) => SalesReport.fromJson(e.data())).toList();
  }

  @override
  Future<List<SalesReport>> onFetchReports()async {
    final result = await FirestoreCollection.salesReports().get();
    return result.docs.map((e) => SalesReport.fromJson(e.data())).toList();
  }
}
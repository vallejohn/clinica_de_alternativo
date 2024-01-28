part of 'datasource.dart';

class SaleReportingDatasourceImpl extends SalesReportingDatasource{

  final _log = AppLogger('SaleReportingDatasourceImpl');

  @override
  Future<SalesReport> sendSalesReport(SalesReport report)async {
    final productMap = report.copyWith(transactionId: const Uuid().v1()).product!.toJson();
    Map<String, dynamic> reportMap = report.copyWith(transactionId: const Uuid().v1()).toJson();

    reportMap['product'] = productMap;
    reportMap['transactionDate'] = Timestamp.fromDate(report.transactionDate as DateTime);
    reportMap['creationDate'] = Timestamp.now();
    productMap['type'] = report.product?.type?.toJson();

    await FirestoreCollection.salesReports().add(reportMap);
    return SalesReport.fromJson(reportMap);
  }

  @override
  Future<List<SalesReport>> onFetchReports()async {
    final dateNow = DateTime.now();

    /// From date today 12:00 AM
    final from = DateTime(dateNow.year, dateNow.month, dateNow.day, 0, 0, 0);

    /// To date today 11:59 PM
    final to = DateTime(dateNow.year, dateNow.month, dateNow.day, 23, 59, 59);

    final result = await FirestoreCollection.salesReports()
        .where('transactionDate', isGreaterThanOrEqualTo: Timestamp.fromDate(from))
        .where('transactionDate', isLessThanOrEqualTo: Timestamp.fromDate(to))
        .get();
    return result.docs.map((e) => SalesReport.fromJson(e.data())).toList();
  }
}
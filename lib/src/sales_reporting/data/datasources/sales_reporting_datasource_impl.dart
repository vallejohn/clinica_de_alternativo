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
  Future<SalesReportDocuments> onFetchReports(FetchSalesReportsParam param)async {
    final dateNow = DateTime.now();

    /*final sample = await FirestoreCollection.salesReports().where('product.id', isEqualTo: '7RMnximuaAgWHTOCwNoa').aggregate(sum('quantitySold'), ).get();
    appLogger.wtf(sample.getSum('quantitySold'));*/

    DateTime? dateStartFromParam;
    DateTime? dateEndFromParam;
    List<String?> productIds = param.salesReportingFilterParam == null? [] : param.salesReportingFilterParam!.products.map((e) => e.id).toList();
    List<String?> productTypeIds = param.salesReportingFilterParam == null? [] : param.salesReportingFilterParam!.productTypes.map((e) => e.id).toList();

    if(param.salesReportingFilterParam != null){
      dateStartFromParam = param.salesReportingFilterParam!.dateTimeRange.start;
      dateEndFromParam = param.salesReportingFilterParam!.dateTimeRange.end;
    }

    /// From date today 12:00 AM
    final from = DateTime(
      dateStartFromParam != null? dateStartFromParam.year : dateNow.year,
      dateStartFromParam != null? dateStartFromParam.month : dateNow.month,
      dateStartFromParam != null? dateStartFromParam.day : dateNow.day,
      0, 0, 0,
    );

    /// To date today 11:59 PM
    final to = DateTime(
      dateEndFromParam != null? dateEndFromParam.year : dateNow.year,
      dateEndFromParam != null? dateEndFromParam.month : dateNow.month,
      dateEndFromParam != null? dateEndFromParam.day : dateNow.day,
      23, 59, 59,
    );

    String queryObj = '';
    List<String?>? finalFilter;

    if(productIds.isNotEmpty){
      queryObj = 'product.id';
      finalFilter = productIds;
    }else if(productTypeIds.isNotEmpty){
      queryObj = 'product.type.id';
      finalFilter = productTypeIds;
    }else{
      queryObj = 'product.id';
      finalFilter = null;
    }

    QuerySnapshot<Map<String, dynamic>>? result;
    if(param.paginate.lastVisibleDocument != null){
      appLogger.d('Last document is not null ${param.paginate.lastVisibleDocument!.data()['product']['name']}');
      result = await FirestoreCollection.salesReports()
          .where('transactionDate', isGreaterThanOrEqualTo: Timestamp.fromDate(from))
          .where('transactionDate', isLessThanOrEqualTo: Timestamp.fromDate(to))
          .where(queryObj, whereIn: finalFilter)
          .orderBy('transactionDate')
          .startAfterDocument(param.paginate.lastVisibleDocument!)
          .limit(param.paginate.limit)
          .get();
      appLogger.wtf(result.docs.length);
    }else{
      appLogger.d('Last document is null');
      result = await FirestoreCollection.salesReports()
          .where('transactionDate', isGreaterThanOrEqualTo: Timestamp.fromDate(from))
          .where('transactionDate', isLessThanOrEqualTo: Timestamp.fromDate(to))
          .where(queryObj, whereIn: finalFilter)
          .orderBy('transactionDate')
          .limit(param.paginate.limit)
          .get();
      appLogger.wtf(result.docs.length);
    }

    List<SalesReport> salesReport = result.docs.map((e) => SalesReport.fromJson(e.data())).toList();

    //TODO This switch statement will create an issue with the list since it is paginated
    switch(queryObj){
      case 'product.id':
        if(productTypeIds.isNotEmpty){
          salesReport = salesReport.where((sr) => productTypeIds.contains(sr.product?.type?.id)).toList();
        }
      case 'product.type.id':
        if(productIds.isNotEmpty){
          salesReport = salesReport.where((sr) => productIds.contains(sr.product?.id)).toList();
        }
    }
    appLogger.d(result.docs.isNotEmpty? 'last document ${result.docs.last.data()}' : 'No last document');
    return SalesReportDocuments(
      salesReports: salesReport,
      paginate: Paginate(lastVisibleDocument: result.docs.isEmpty? param.paginate.lastVisibleDocument! : result.docs[result.size - 1])
    );
  }
}
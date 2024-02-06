part of 'sales_reporting_bloc.dart';

@freezed
class SalesReportingEvent with _$SalesReportingEvent {
  const factory SalesReportingEvent.onFetchReport({
    Branch? branch,
    QueryDocumentSnapshot<Map<String, dynamic>>? paginateFromLastDoc,
  }) = _OnFetchReport;
  const factory SalesReportingEvent.onSendReport(SalesReport salesReport) = _OnSendReport;
}

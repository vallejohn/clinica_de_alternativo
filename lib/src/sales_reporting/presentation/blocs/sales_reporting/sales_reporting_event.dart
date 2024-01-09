part of 'sales_reporting_bloc.dart';

@freezed
class SalesReportingEvent with _$SalesReportingEvent {
  const factory SalesReportingEvent.onSendReport(SalesReport salesReport) = _OnSendReport;
}

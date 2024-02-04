part of 'sales_report_generator_bloc.dart';

@freezed
class SalesReportGeneratorEvent with _$SalesReportGeneratorEvent {
  const factory SalesReportGeneratorEvent
      .onGenerateReport(FetchSalesReportsParam param) = _OnGenerateReport;
}

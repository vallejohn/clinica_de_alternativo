part of 'sales_report_generator_bloc.dart';

enum SalesGeneratorStatus {initial, loading, success, failed}

@freezed
class SalesReportGeneratorState with _$SalesReportGeneratorState {
  factory SalesReportGeneratorState({
    @Default(SalesGeneratorStatus.initial) SalesGeneratorStatus status,
    SalesReportDocuments? salesReportDocs,
    @Default('') String message,
    ErrorCode? errorCode,
    @Default(false) bool loadingMoreItems,
  }) = _SalesReportGeneratorState;
}

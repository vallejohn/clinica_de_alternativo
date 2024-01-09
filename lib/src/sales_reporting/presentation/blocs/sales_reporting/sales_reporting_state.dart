part of 'sales_reporting_bloc.dart';

enum SalesReportingStatus{initial, loading, success, failed}

@freezed
class SalesReportingState with _$SalesReportingState {
  factory SalesReportingState({
    @Default(SalesReportingStatus.initial) SalesReportingStatus status,
    @Default('') String message,
  }) = _SalesReportingState;
}

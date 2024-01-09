import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_report.freezed.dart';
part 'sales_report.g.dart';

@freezed
class SalesReport with _$SalesReport{
  const factory SalesReport({
    String? id,
    String? transactionId,
    @Default('') String productName,
    @Default(0) double quantitySold,
  }) = _SalesReport;

  factory SalesReport.fromJson(Map<String, dynamic> json) => _$SalesReportFromJson(json);
}
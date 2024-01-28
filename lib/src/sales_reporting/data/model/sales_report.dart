import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../inventory/data/model/product.dart';

part 'sales_report.freezed.dart';
part 'sales_report.g.dart';

@freezed
class SalesReport with _$SalesReport{
  const factory SalesReport({
    String? id,
    String? transactionId,
    Product? product,
    dynamic transactionDate,
    dynamic creationDate,
    @Default(0) int quantitySold,
  }) = _SalesReport;

  factory SalesReport.fromJson(Map<String, dynamic> json) => _$SalesReportFromJson(json);
}
import 'package:clinica_de_alternativo/core/models/paginate.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/data/model/sales_report.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_report_documents.freezed.dart';

@freezed
class SalesReportDocuments with _$SalesReportDocuments{
  const factory SalesReportDocuments({
    @Default([]) List<SalesReport> salesReports,
    Paginate? paginate,
  }) = _SalesReportDocuments;
}

import 'package:clinica_de_alternativo/src/sales_reporting/core/params.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/data/model/sales_report.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/data/model/sales_report_documents.dart';
import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../../core/exceptions/failure.dart';
import 'repositories/sales_report_repository.dart';

part 'usecases/send_report_usecase.dart';
part 'usecases/on_fetch_reports_usecase.dart';
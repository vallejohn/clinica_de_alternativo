import 'package:clinica_de_alternativo/src/sales_reporting/data/datasources/datasource.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/data/repositories/sales_reporting_repository_impl.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/domain/repositories/sales_report_repository.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/domain/sales_reporting_usecases.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupLocator()async {

  getIt.registerLazySingleton<SalesReportingDatasource>(() =>
      SaleReportingDatasourceImpl());

  getIt.registerLazySingleton<SalesReportRepository>(() => SalesReportingRepositoryImpl(salesReportDataSource: getIt()));

  getIt.registerLazySingleton(() => SendReportUseCase(getIt()));
}
import 'package:clinica_de_alternativo/src/authentication/data/datasources/datasource.dart';
import 'package:clinica_de_alternativo/src/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:clinica_de_alternativo/src/authentication/domain/authentication_usecases.dart';
import 'package:clinica_de_alternativo/src/authentication/domain/repositories/authentication_repository.dart';
import 'package:clinica_de_alternativo/src/inventory/data/datasources/datasource.dart';
import 'package:clinica_de_alternativo/src/inventory/data/repositories/product_repository_impl.dart';
import 'package:clinica_de_alternativo/src/inventory/domain/product_usecases.dart';
import 'package:clinica_de_alternativo/src/inventory/domain/repositories/product_repository.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/data/datasources/datasource.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/data/repositories/sales_reporting_repository_impl.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/domain/repositories/sales_report_repository.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/domain/sales_reporting_usecases.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupLocator()async {
  _setupAuthentication();
  _setupProductsInventory();
  _setupSalesReporting();
}

///Authentication
void _setupAuthentication(){
  getIt.registerLazySingleton<AuthenticationDatasource>(() =>
      AuthenticationDatasourceImpl());

  getIt.registerLazySingleton<AuthenticationRepository>(() => AuthenticationRepositoryImpl(authenticationDatasource: getIt()));

  getIt.registerLazySingleton(() => OnLoginUseCase(getIt()));
}

///Sales reports
void _setupSalesReporting(){
  getIt.registerLazySingleton<SalesReportingDatasource>(() =>
      SaleReportingDatasourceImpl());

  getIt.registerLazySingleton<SalesReportRepository>(() => SalesReportingRepositoryImpl(salesReportDataSource: getIt()));

  getIt.registerLazySingleton(() => SendReportUseCase(getIt()));
  getIt.registerLazySingleton(() => OnFetchReportsUseCase(getIt()));
}

///Inventory
void _setupProductsInventory(){
  getIt.registerLazySingleton<ProductDatasource>(() =>
      ProductDatasourceImpl());

  getIt.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl(productDatasource: getIt()));

  getIt.registerLazySingleton(() => OnAddProductUseCase(getIt()));
  getIt.registerLazySingleton(() => OnFetchProductsUseCase(getIt()));
}
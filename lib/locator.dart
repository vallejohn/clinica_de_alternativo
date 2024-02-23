import 'package:clinica_de_alternativo/src/account/data/datasources/datasource.dart';
import 'package:clinica_de_alternativo/src/account/data/repositories/account_repository_impl.dart';
import 'package:clinica_de_alternativo/src/account/domain/account_usecases.dart';
import 'package:clinica_de_alternativo/src/account/domain/repositories/account_repository.dart';
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
  _setupAccount();
}

///Authentication
void _setupAuthentication(){
  getIt.registerLazySingleton<AuthenticationDatasource>(() =>
      AuthenticationDatasourceImpl());

  getIt.registerLazySingleton<AuthenticationRepository>(() => AuthenticationRepositoryImpl(authenticationDatasource: getIt()));

  getIt.registerLazySingleton(() => OnLoginUseCase(getIt()));
  getIt.registerLazySingleton(() => OnCheckProfileUseCase(getIt()));
  getIt.registerLazySingleton(() => OnUpdateProfileUseCase(getIt()));
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
  getIt.registerLazySingleton(() => OnUpdateProductUseCase(getIt()));
  getIt.registerLazySingleton(() => OnFetchProductsUseCase(getIt()));
  getIt.registerLazySingleton(() => OnDeleteProductUseCase(getIt()));
  getIt.registerLazySingleton(() => OnFetchProductTypesUseCase(getIt()));
  getIt.registerLazySingleton(() => OnAddProductTypeUseCase(getIt()));
}

///Account
void _setupAccount(){
  getIt.registerLazySingleton<AccountDatasource>(() =>
      AccountDatasourceImpl());

  getIt.registerLazySingleton<AccountRepository>(() => AccountRepositoryImpl(accountDatasource: getIt()));

  getIt.registerLazySingleton(() => OnGetBranchesUseCase(getIt()));
  getIt.registerLazySingleton(() => OnAddBranchUseCase(getIt()));
  getIt.registerLazySingleton(() => OnGetRolesUseCase(getIt()));
  getIt.registerLazySingleton(() => OnAddRoleUseCase(getIt()));
  getIt.registerLazySingleton(() => OnUpdateAccountDetailsUseCase(getIt()));
  getIt.registerLazySingleton(() => OnGetAccountDetailsUseCase(getIt()));
  getIt.registerLazySingleton(() => OnGetAccountsUseCase(getIt()));
  getIt.registerLazySingleton(() => OnAddAccountUseCase(getIt()));
  getIt.registerLazySingleton(() => OnEditProductTypeUseCase(getIt()));
  getIt.registerLazySingleton(() => OnDeleteProductTypeUseCase(getIt()));
  getIt.registerLazySingleton(() => OnGetModulesUseCase(getIt()));
  getIt.registerLazySingleton(() => OnAddModuleUseCase(getIt()));
  getIt.registerLazySingleton(() => OnUpdateRoleUseCase(getIt()));
  getIt.registerLazySingleton(() => OnDeleteRoleUseCase(getIt()));
}
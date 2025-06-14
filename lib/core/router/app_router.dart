import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../src/account/presentation/pages.dart';
import '../../src/authentication/presentation/pages.dart';
import '../../src/home_page.dart';
import '../../src/inventory/data/model/product.dart';
import '../../src/inventory/presentation/pages.dart';
import '../../src/modules_page.dart';
import '../../src/sales_reporting/presentation/pages.dart';
import '../global_widgets/pages/settings_page.dart';

part 'app_router.gr.dart';


@AutoRouterConfig()
class AppRouter extends _$AppRouter{
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: StartupRoute.page),
    AutoRoute(page: SettingsRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: ProfileCompletionRoute.page),
    AutoRoute(page: SaleReportingRoute.page),
    AutoRoute(page: SearchProductsRoute.page),
    AutoRoute(page: ProductsRoute.page),
    AutoRoute(page: ProductDetailsRoute.page),
    AutoRoute(page: AddProductRoute.page),
    AutoRoute(page: ModulesRoute.page),
    AutoRoute(page: RolesRoute.page),
    AutoRoute(page: EmployeesRoute.page),
    AutoRoute(page: BranchesRoute.page),
    AutoRoute(page: AccountRoute.page),
  ];
}

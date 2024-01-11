import 'package:auto_route/auto_route.dart';

import '../../src/authentication/presentation/pages.dart';
import '../../src/inventory/presentation/pages.dart';
import '../../src/sales_reporting/presentation/pages.dart';

part 'app_router.gr.dart';


@AutoRouterConfig()
class AppRouter extends _$AppRouter{
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: StartupRoute.page, initial: true),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: SaleReportingRoute.page),
    AutoRoute(page: SearchProductsRoute.page),
    AutoRoute(page: AddProductsRoute.page),
  ];
}

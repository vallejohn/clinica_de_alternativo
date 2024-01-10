import 'package:auto_route/auto_route.dart';

import '../../src/sales_reporting/presentation/pages.dart';

part 'app_router.gr.dart';


@AutoRouterConfig()
class AppRouter extends _$AppRouter{
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SaleReportingRoute.page, initial: true),
    AutoRoute(page: SearchProductsRoute.page),
    AutoRoute(page: AddProductsRoute.page),
  ];
}

import 'package:auto_route/auto_route.dart';

import '../../src/authentication/presentation/pages.dart';
import '../../src/home_page.dart';
import '../../src/inventory/presentation/pages.dart';
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
  ];
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    SaleReportingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SaleReportingPage(),
      );
    },
    SearchProductsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchProductsPage(),
      );
    },
  };
}

/// generated route for
/// [SaleReportingPage]
class SaleReportingRoute extends PageRouteInfo<void> {
  const SaleReportingRoute({List<PageRouteInfo>? children})
      : super(
          SaleReportingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SaleReportingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchProductsPage]
class SearchProductsRoute extends PageRouteInfo<void> {
  const SearchProductsRoute({List<PageRouteInfo>? children})
      : super(
          SearchProductsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchProductsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

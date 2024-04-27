import 'package:auto_route/auto_route.dart';
import 'package:clinica_de_alternativo/core/blocs/home_navigator_cubit.dart';
import 'package:clinica_de_alternativo/core/core.dart';
import 'package:clinica_de_alternativo/core/global_widgets/pages/settings_page.dart';
import 'package:clinica_de_alternativo/core/global_widgets/security_role_handler.dart';
import 'package:clinica_de_alternativo/src/account/data/models/role.dart';
import 'package:clinica_de_alternativo/src/account/presentation/blocs/account/account_bloc.dart';
import 'package:clinica_de_alternativo/src/account/presentation/blocs/employees/employees_bloc.dart';
import 'package:clinica_de_alternativo/src/account/presentation/blocs/roles/role_bloc.dart';
import 'package:clinica_de_alternativo/src/authentication/data/model/profile_information.dart';
import 'package:clinica_de_alternativo/src/authentication/presentation/blocs/profile_checker/profile_checker_bloc.dart';
import 'package:clinica_de_alternativo/src/modules_page.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/presentation/pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ionicons/ionicons.dart';

import '../core/blocs/data_initializer/data_initializer_bloc.dart';
import 'account/presentation/blocs/branches/branch_bloc.dart';
import 'account/presentation/blocs/modules/module_bloc.dart';
import 'inventory/presentation/blocs/poduct_type/product_type_bloc.dart';
import 'inventory/presentation/blocs/products/products_bloc.dart';
import 'inventory/presentation/pages.dart';


class ExampleDestination {
  const ExampleDestination(this.label, this.icon, this.selectedIcon);

  final String label;
  final Widget icon;
  final Widget selectedIcon;
}

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeNavigatorCubit>(
          create: (context) => HomeNavigatorCubit(),
        ),
      ],
      child: BlocListener<DataInitializerBloc, DataInitializerState>(
        listenWhen: (prev, cur) => prev.status != cur.status,
        listener: (context, state){
          if(state.status == DataInitializerStatus.loading){
            showDialog(context: context, builder: (builder){
              return const AlertDialog(backgroundColor: Colors.white,content: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: SizedBox(width: 50, height: 50, child: Row(
                        children: [
                          CircularProgressIndicator(),
                        ],
                      )),
                    ),
                  ],
                ),
              ),);
            });
          }
          if(state.status == DataInitializerStatus.failed || state.status == DataInitializerStatus.success){
            Navigator.pop(context);
          }
        },
        child: BlocBuilder<HomeNavigatorCubit, int>(
          builder: (navContext, navState) {
            return SecurityRoleHandler(
              builder: (hasPermission) {
                return Scaffold(
                  body: PageView(
                    controller: _pageController,
                    onPageChanged: (int index) => navContext.read<HomeNavigatorCubit>().onPageChanged(index),
                    children: [
                      SaleReportingPage(),
                      if(hasPermission([SecurityModule.generateSales])) SalesSummaryPage(),
                      ProductsPage(),
                      SettingsPage(),
                    ],
                  ),
                  bottomNavigationBar: NavigationBar(
                    selectedIndex: navState,
                    onDestinationSelected: (int index) {
                      navContext.read<HomeNavigatorCubit>().onPageChanged(index);
                      _pageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    },
                    destinations: [
                      const ExampleDestination(
                          'Reporting', Icon(Ionicons.reader_outline), Icon(Ionicons.reader)),
                      //if(accountState.profile != null && accountState.profile!.role!.modulesAttached.where((element) => element.code == 'sales').isNotEmpty)
                      if(hasPermission([SecurityModule.generateSales])) const ExampleDestination(
                          'Sales', Icon(Ionicons.bar_chart_outline), Icon(Ionicons.bar_chart)),
                      const ExampleDestination(
                          'Products', Icon(Ionicons.leaf_outline), Icon(Ionicons.leaf)),
                      const ExampleDestination(
                          'Settings', Icon(Ionicons.settings_outline), Icon(Ionicons.settings)),
                    ].map(
                          (ExampleDestination destination) {
                        return NavigationDestination(
                          label: destination.label,
                          icon: destination.icon,
                          selectedIcon: destination.selectedIcon,
                          tooltip: destination.label,
                        );
                      },
                    ).toList(),
                  ),
                );
              }
            );
          },
        ),
      ),
    );
  }
}

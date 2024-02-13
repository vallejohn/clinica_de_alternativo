import 'package:auto_route/auto_route.dart';
import 'package:clinica_de_alternativo/core/blocs/home_navigator_cubit.dart';
import 'package:clinica_de_alternativo/core/core.dart';
import 'package:clinica_de_alternativo/core/global_widgets/pages/settings_page.dart';
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
    List<ExampleDestination> destinations = <ExampleDestination>[
      const ExampleDestination(
          'Reporting', Icon(Ionicons.reader_outline), Icon(Ionicons.reader)),
      //if(accountState.profile != null && accountState.profile!.role!.modulesAttached.where((element) => element.code == 'sales').isNotEmpty)
      const ExampleDestination(
          'Sales', Icon(Ionicons.bar_chart_outline), Icon(Ionicons.bar_chart)),
      const ExampleDestination(
          'Products', Icon(Ionicons.leaf_outline), Icon(Ionicons.leaf)),
      const ExampleDestination(
          'Settings', Icon(Ionicons.settings_outline), Icon(Ionicons.settings)),
    ];

    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeNavigatorCubit>(
          create: (context) => HomeNavigatorCubit(),
        ),
        BlocProvider<DataInitializerBloc>.value(
          value: BlocProvider.of<DataInitializerBloc>(context)..add(const DataInitializerEvent.onFetchData()),
        )
      ],
      child: BlocListener<DataInitializerBloc, DataInitializerState>(
        listenWhen: (prev, cur) => prev.status != cur.status,
        listener: (context, state){
          if(state.status == DataInitializerStatus.loading){
            showDialog(context: context, builder: (builder){
              return SpinKitPulse(color: Theme.of(context).colorScheme.primary,);
            });
          }
          if(state.status == DataInitializerStatus.success){
            Navigator.pop(context);
            context.read<AccountBloc>().add(AccountEvent.onStarted(state.profile!));
            context.read<RoleBloc>().add(RoleEvent.onStarted(state.roles));
            context.read<ModuleBloc>().add(ModuleEvent.onStarted(state.modules));
            context.read<ProductsBloc>().add(ProductsEvent.onStarted(state.products));
            context.read<ProductTypeBloc>().add(ProductTypeEvent.onStarted(state.productTypes));
            context.read<EmployeesBloc>().add(EmployeesEvent.onStarted(state.employees));
            context.read<BranchBloc>().add(BranchEvent.onStarted(state.branches));
          }

          if(state.status == DataInitializerStatus.failed){
            Navigator.pop(context);
          }
        },
        child: BlocBuilder<HomeNavigatorCubit, int>(
          builder: (navContext, navState) {
            return Scaffold(
              body: PageView(
                controller: _pageController,
                onPageChanged: (int index) => navContext.read<HomeNavigatorCubit>().onPageChanged(index),
                children: [
                  const SaleReportingPage(),
                  const SalesSummaryPage(),
                  const ProductsPage(),
                  const SettingsPage(),
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
                  const ExampleDestination(
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
          },
        ),
      ),
    );
  }
}

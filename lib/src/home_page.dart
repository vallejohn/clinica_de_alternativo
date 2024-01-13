import 'package:auto_route/auto_route.dart';
import 'package:clinica_de_alternativo/core/blocs/home_navigator_cubit.dart';
import 'package:clinica_de_alternativo/core/core.dart';
import 'package:clinica_de_alternativo/core/global_widgets/pages/settings_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';


class ExampleDestination {
  const ExampleDestination(this.label, this.icon, this.selectedIcon);

  final String label;
  final Widget icon;
  final Widget selectedIcon;
}

const List<ExampleDestination> destinations = <ExampleDestination>[
  ExampleDestination(
      'Home', Icon(Ionicons.home_outline), Icon(Ionicons.home)),
  ExampleDestination(
      'Sales', Icon(Ionicons.bar_chart_outline), Icon(Ionicons.bar_chart)),
  ExampleDestination(
      'Products', Icon(Ionicons.leaf_outline), Icon(Ionicons.leaf)),
  ExampleDestination(
      'Settings', Icon(Ionicons.settings_outline), Icon(Ionicons.settings)),
];

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
    return BlocProvider<HomeNavigatorCubit>(
      create: (context) => HomeNavigatorCubit(),
      child: BlocBuilder<HomeNavigatorCubit, int>(
        builder: (navContext, navState) {
          return Scaffold(
            body: PageView(
              controller: _pageController,
              onPageChanged: (int index) => navContext.read<HomeNavigatorCubit>().onPageChanged(index),
              children: <Widget>[
                const Center(child: Text('Page Index 1')),
                const Center(child: Text('Page Index 2')),
                const Center(child: Text('Page Index 3')),
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
              destinations: destinations.map(
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
    );
  }
}

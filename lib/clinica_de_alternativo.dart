import 'package:clinica_de_alternativo/src/authentication/presentation/blocs/auth_checker/auth_checker_bloc.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/presentation/blocs/search_product/search_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/router/app_router.dart';

class ClinicaDeAlternativo extends StatefulWidget {
  const ClinicaDeAlternativo({super.key});

  @override
  State<ClinicaDeAlternativo> createState() => _ClinicaDeAlternativoState();
}

class _ClinicaDeAlternativoState extends State<ClinicaDeAlternativo> {

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchProductCubit(),
        ),
        BlocProvider<AuthCheckerBloc>(
          create: (context) =>
          AuthCheckerBloc()
            ..add(const AuthCheckerEvent.onCheckAuthStatus()),
          child: Container(),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthCheckerBloc, AuthCheckerState>(
            listener: (context, state) {
              state.when(authenticated: (_){
                _appRouter.pushAndPopUntil(const SaleReportingRoute(), predicate: (Route<dynamic> route) => false);
              }, unAuthenticated: (){
                _appRouter.pushAndPopUntil(const LoginRoute(), predicate: (Route<dynamic> route) => false);
              });
            },
          ),
        ],
        child: MaterialApp.router(
          title: 'Clinica De Alternativo',
          theme: ThemeData(
            fontFamily: 'Rubik',
            colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff3d550c)),
            useMaterial3: true,
          ),
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        ),
      ),
    );
  }
}

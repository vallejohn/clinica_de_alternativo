import 'package:clinica_de_alternativo/src/account/presentation/blocs/account/account_bloc.dart';
import 'package:clinica_de_alternativo/src/account/presentation/blocs/branches/branch_bloc.dart';
import 'package:clinica_de_alternativo/src/account/presentation/blocs/employees/employees_bloc.dart';
import 'package:clinica_de_alternativo/src/account/presentation/blocs/roles/role_bloc.dart';
import 'package:clinica_de_alternativo/src/authentication/presentation/blocs/auth_checker/auth_checker_bloc.dart';
import 'package:clinica_de_alternativo/src/authentication/presentation/blocs/profile_checker/profile_checker_bloc.dart';
import 'package:clinica_de_alternativo/src/inventory/presentation/blocs/poduct_type/product_type_bloc.dart';
import 'package:clinica_de_alternativo/src/inventory/presentation/blocs/products/products_bloc.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/presentation/blocs/sales_reporting/sales_reporting_bloc.dart';
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
        BlocProvider<ProfileCheckerBloc>(
          create: (context) => ProfileCheckerBloc(),
        ),
        BlocProvider<SalesReportingBloc>(
          create: (context) => SalesReportingBloc(),
        ),
        BlocProvider<ProductsBloc>(
          create: (context) => ProductsBloc(),
        ),
        BlocProvider<AccountBloc>(
          create: (context) => AccountBloc(),
        ),
        BlocProvider<EmployeesBloc>(
          create: (context) => EmployeesBloc(),
        ),
        BlocProvider<ProductTypeBloc>(
          create: (context) => ProductTypeBloc(),
        ),
        BlocProvider<BranchBloc>(
          create: (context) => BranchBloc()..add(const BranchEvent.onFetch()),
        ),
        BlocProvider<RoleBloc>(
          create: (context) => RoleBloc()..add(const RoleEvent.onFetch()),
        ),
        BlocProvider<AuthCheckerBloc>(
          create: (context) =>
          AuthCheckerBloc()..add(const AuthCheckerEvent.onCheckAuthStatus()),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<ProfileCheckerBloc, ProfileCheckerState>(
            listener: (context, state) {
              state.whenOrNull(
                loading: (){

                },
                success: (profile){
                  if(profile != null){
                    context.read<ProductTypeBloc>().add(const ProductTypeEvent.onFetch());
                    _appRouter.replace(const HomeRoute());
                  }else{
                    _appRouter.replace(const ProfileCompletionRoute());
                  }
                },
                failed: (message){

                },
              );
            },
          ),
          BlocListener<AuthCheckerBloc, AuthCheckerState>(
            listener: (context, state) {
              state.when(authenticated: (user){
                BlocProvider.of<ProfileCheckerBloc>(context).add(ProfileCheckerEvent.onCheckCompletion(user.uid));
              }, unAuthenticated: (){
                _appRouter.replace(const LoginRoute());
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
            inputDecorationTheme: InputDecorationTheme(
              suffixIconColor: const Color(0xff5e762e),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              enabledBorder: OutlineInputBorder(
                //borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  width: 1.3,
                    color: const Color(0xff3d550c).withOpacity(0.15),
                ),
              ),
            ),
            cardTheme: CardTheme(
              elevation: 0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.3,
                  color: const Color(0xff3d550c).withOpacity(0.15),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
            )
          ),
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        ),
      ),
    );
  }
}

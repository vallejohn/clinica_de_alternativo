import 'package:clinica_de_alternativo/core/core.dart';
import 'package:clinica_de_alternativo/src/account/presentation/blocs/account/account_bloc.dart';
import 'package:clinica_de_alternativo/src/account/presentation/blocs/branches/branch_bloc.dart';
import 'package:clinica_de_alternativo/src/account/presentation/blocs/employees/employees_bloc.dart';
import 'package:clinica_de_alternativo/src/account/presentation/blocs/modules/module_bloc.dart';
import 'package:clinica_de_alternativo/src/account/presentation/blocs/roles/role_bloc.dart';
import 'package:clinica_de_alternativo/src/authentication/presentation/blocs/auth_checker/auth_checker_bloc.dart';
import 'package:clinica_de_alternativo/src/authentication/presentation/blocs/profile_checker/profile_checker_bloc.dart';
import 'package:clinica_de_alternativo/src/inventory/presentation/blocs/poduct_type/product_type_bloc.dart';
import 'package:clinica_de_alternativo/src/inventory/presentation/blocs/products/products_bloc.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/presentation/blocs/sales_report_generator/sales_report_generator_bloc.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/presentation/blocs/sales_reporting/sales_reporting_bloc.dart';
import 'package:clinica_de_alternativo/src/sales_reporting/presentation/blocs/search_product/search_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'core/blocs/data_initializer/data_initializer_bloc.dart';
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

    final colorScheme = ColorScheme.fromSeed(seedColor: const Color(0xff03AC54), secondary: const Color(0xffF9F603));

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
          create: (context) => BranchBloc(),
        ),
        BlocProvider<RoleBloc>(
          create: (context) => RoleBloc(),
        ),
        BlocProvider<ModuleBloc>(
          create: (context) => ModuleBloc(),
        ),
        BlocProvider<AuthCheckerBloc>(
          create: (context) =>
          AuthCheckerBloc()..add(const AuthCheckerEvent.onCheckAuthStatus()),
        ),
        BlocProvider<SalesReportGeneratorBloc>(
          create: (context) => SalesReportGeneratorBloc(),
        ),
        BlocProvider<DataInitializerBloc>(
          create: (context) => DataInitializerBloc(),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<DataInitializerBloc, DataInitializerState>(
            listenWhen: (prev, cur) => prev.status != cur.status,
            listener: (context, state) {
              if(state.status == DataInitializerStatus.success){
                //context.read<AccountBloc>().add(AccountEvent.onStarted(state.profile!));
                //context.read<RoleBloc>().add(RoleEvent.onStarted(state.roles));
                //context.read<ModuleBloc>().add(ModuleEvent.onStarted(state.modules));
                //context.read<ProductsBloc>().add(ProductsEvent.onStarted(state.products));
                //context.read<ProductTypeBloc>().add(ProductTypeEvent.onStarted(state.productTypes));
                //context.read<EmployeesBloc>().add(EmployeesEvent.onStarted(state.employees));
                //context.read<BranchBloc>().add(BranchEvent.onStarted(state.branches));
                _appRouter.replace(const HomeRoute());
              }
            },
          ),
          BlocListener<ProfileCheckerBloc, ProfileCheckerState>(
            listener: (context, state) {
              if(state.status == ProfileCheckStatus.success){
                if(state.profile != null){
                  context.read<AccountBloc>().add(AccountEvent.onStarted(state.profile!));
                  //context.read<DataInitializerBloc>().add(const DataInitializerEvent.onFetchData());
                  _appRouter.replace(const HomeRoute());
                }else{
                  _appRouter.replace(const ProfileCompletionRoute());
                }
              }
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
              colorScheme: colorScheme,
            useMaterial3: true,
            inputDecorationTheme: InputDecorationTheme(
              suffixIconColor: colorScheme.primary,
              fillColor: Colors.white,
              filled: true,
              border: const OutlineInputBorder(
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  //width: 1.3,
                    color: colorScheme.surfaceVariant,
                ),
              ),
            ),
            cardTheme: CardTheme(
              elevation: 10,
              shadowColor: Colors.grey.withOpacity(0.24),
              //color: colorScheme.surfaceVariant,
              color: Colors.white,
              surfaceTintColor: Colors.white
            ),
            filledButtonTheme: FilledButtonThemeData(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ))
              )
            ),
            textButtonTheme: TextButtonThemeData(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                    ))
                )
            ),
            checkboxTheme: CheckboxThemeData(
              side: BorderSide(color: colorScheme.primary, width: 1.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              )
            ),
            radioTheme: RadioThemeData(
              fillColor: MaterialStateProperty.all(colorScheme.primary),
            ),
            progressIndicatorTheme: ProgressIndicatorThemeData(
              linearMinHeight: 2.5
            )
          ),
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        ),
      ),
    );
  }
}

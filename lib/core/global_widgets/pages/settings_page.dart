import 'package:auto_route/auto_route.dart';
import 'package:clinica_de_alternativo/core/global_widgets/list_tile_item.dart';
import 'package:clinica_de_alternativo/core/router/app_router.dart';
import 'package:clinica_de_alternativo/src/authentication/presentation/blocs/profile_checker/profile_checker_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';


@RoutePage()
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: Theme.of(context).textTheme.headlineLarge,),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ListTileItem(
              title: 'Account',
              subtitle: 'View and manage your account',
              trailingIcon: const Icon(Icons.arrow_right),
                leadingIcon: Icon(Ionicons.person_outline, color: Theme.of(context).colorScheme.primary,),
              onPressed: (){
                AutoRouter.of(context).push(const AccountRoute());
              },
            ),
            ListTileItem(
              title: 'Branches',
              subtitle: 'View or edit all branches of Clinica',
              trailingIcon: const Icon(Icons.arrow_right),
              leadingIcon: Icon(Ionicons.storefront_outline, color: Theme.of(context).colorScheme.primary,),
              onPressed: (){
                AutoRouter.of(context).push(const BranchesRoute());
              },
            ),
            ListTileItem(
              title: 'Roles',
              subtitle: 'Add or edit user roles',
              trailingIcon: const Icon(Icons.arrow_right),
              leadingIcon: Icon(Ionicons.shield_outline, color: Theme.of(context).colorScheme.primary,),
              onPressed: (){
                AutoRouter.of(context).push(const RolesRoute());
              },
            ),
            ListTileItem(
              title: 'Employees',
              subtitle: 'Add or manage your employees information',
              trailingIcon: const Icon(Icons.arrow_right),
              leadingIcon: Icon(Ionicons.people_outline, color: Theme.of(context).colorScheme.primary,),
              onPressed: (){
                AutoRouter.of(context).push(const EmployeesRoute());
              },
            ),
            const Divider(
              height: 0,
            ),
            ListTileItem(
              title: 'Logout',
              subtitle: context.read<ProfileCheckerBloc>().state.whenOrNull(success: (information) => 'Logout as ${information?.name}'),
              leadingIcon: Icon(Ionicons.log_out_outline, color: Theme.of(context).colorScheme.primary,),
              onPressed: (){
              },
            ),
          ],
        ),
      ),
    );
  }
}

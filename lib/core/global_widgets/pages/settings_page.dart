import 'package:auto_route/auto_route.dart';
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
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            _listItem('Branches',
              subtitle: 'View or edit all branches of Clinica',
              leadingIcon: Icon(Ionicons.storefront_outline, color: Theme.of(context).colorScheme.primary,),
              onPressed: (){

              }
            ),
            _listItem('Roles',
                subtitle: 'Add or edit user roles',
                leadingIcon: Icon(Ionicons.shield_outline, color: Theme.of(context).colorScheme.primary,),
                onPressed: (){

                }
            ),
            _listItem('Employees',
                subtitle: 'Add or manage your employees information',
                leadingIcon: Icon(Ionicons.people_outline, color: Theme.of(context).colorScheme.primary,),
                onPressed: (){

                }
            ),
            const Divider(
              height: 0,
            ),
            _listItem('Logout',
                subtitle: context.read<ProfileCheckerBloc>().state.whenOrNull(success: (information) => 'Logout as ${information?.name}'),
                leadingIcon: Icon(Ionicons.log_out_outline, color: Theme.of(context).colorScheme.primary,),
                onPressed: (){
                }
            ),
          ],
        ),
      ),
    );
  }

  Widget _listItem(String title, {String? subtitle, Widget? trailingIcon, Widget? leadingIcon, VoidCallback? onPressed}){
    return InkWell(
      onTap: onPressed,
      splashColor: Theme.of(context).colorScheme.inversePrimary.withOpacity(0.2),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: ListTile(
          trailing: trailingIcon?? const Icon(Icons.arrow_right),
          leading: leadingIcon,
          title: Text(title, ),
          subtitle: subtitle == null? null : Text(subtitle),
        ),
      ),
    );
  }
}

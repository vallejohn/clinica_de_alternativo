import 'package:clinica_de_alternativo/core/core.dart';
import 'package:clinica_de_alternativo/src/account/presentation/blocs/account/account_bloc.dart';
import 'package:clinica_de_alternativo/src/account/presentation/blocs/roles/role_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Module{reporting, sales, products, branches, rolesAndModules, productTypes, employees}

class SecurityRoleHandler extends StatefulWidget {
  final Module module;
  final Widget? child;
  const SecurityRoleHandler({super.key, required this.module, this.child});

  @override
  State<SecurityRoleHandler> createState() => _SecurityRoleHandlerState();
}

class _SecurityRoleHandlerState extends State<SecurityRoleHandler> {
  @override
  Widget build(BuildContext context) {
    final roleState = context.watch<RoleBloc>().state;
    final roles = roleState.roles;

    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        bool withPermission = false;
        if(state.profile != null){
          final role = roles.firstWhere((element) => element.id == state.profile!.role!.id);
          switch(widget.module){
            case Module.reporting:
            // TODO: Handle this case.
            case Module.sales:
            // TODO: Handle this case.
            case Module.products:
            // TODO: Handle this case.
            case Module.branches:
              withPermission = role.modulesAttached.where((element) => element.code == 'branch').isNotEmpty;
            case Module.rolesAndModules:
            // TODO: Handle this case.
            case Module.productTypes:
            // TODO: Handle this case.
            case Module.employees:
            // TODO: Handle this case.
          }
        }else{
          return Container();
        }
        if(!withPermission) return Container();
        return Container(child: widget.child,);
      }
    );
  }
}

import 'package:clinica_de_alternativo/src/account/presentation/blocs/account/account_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum SecurityModule{reporting, sales, products, branches, roles, module, productTypes, employees}

class SecurityRoleHandler extends StatefulWidget {
  final List<SecurityModule> modules;
  final Widget? child;
  const SecurityRoleHandler({super.key, required this.modules, this.child});

  @override
  State<SecurityRoleHandler> createState() => _SecurityRoleHandlerState();
}

class _SecurityRoleHandlerState extends State<SecurityRoleHandler> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        bool withPermission = false;
        if(state.profile != null){

          if(state.profile!.role!.code == 'super_admin') return Container(child: widget.child,);

          /*for(final module in widget.modules){
            if(!withPermission){
              switch(module){
                case SecurityModule.reporting:
                  withPermission = state.profile!.role!.modulesAttached.where((element) => element.code == 'reports').isNotEmpty;
                case SecurityModule.sales:
                withPermission = state.profile!.role!.modulesAttached.where((element) => element.code == 'sales').isNotEmpty;
                case SecurityModule.products:
                withPermission = state.profile!.role!.modulesAttached.where((element) => element.code == 'products').isNotEmpty;
                case SecurityModule.branches:
                  withPermission = state.profile!.role!.modulesAttached.where((element) => element.code == 'branch').isNotEmpty;
                case SecurityModule.module:
                  withPermission = state.profile!.role!.modulesAttached.where((element) => element.code == 'modules').isNotEmpty;
                case SecurityModule.roles:
                  withPermission = state.profile!.role!.modulesAttached.where((element) => element.code == 'roles').isNotEmpty;
                case SecurityModule.productTypes:
                  withPermission = state.profile!.role!.modulesAttached.where((element) => element.code == 'product_types').isNotEmpty;
                case SecurityModule.employees:
                  withPermission = state.profile!.role!.modulesAttached.where((element) => element.code == 'employees').isNotEmpty;
              }
            }
          }*/
        }else{
          return Container();
        }
        if(!withPermission) return Container();
        return Container(child: widget.child,);
      }
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:clinica_de_alternativo/core/blocs/widget_helper_cubit.dart';
import 'package:clinica_de_alternativo/core/global_widgets/list_tile_item.dart';
import 'package:clinica_de_alternativo/core/global_widgets/security_role_handler.dart';
import 'package:clinica_de_alternativo/core/router/app_router.dart';
import 'package:clinica_de_alternativo/src/authentication/presentation/blocs/profile_checker/profile_checker_bloc.dart';
import 'package:clinica_de_alternativo/src/inventory/presentation/blocs/poduct_type/product_type_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';

import '../../../src/account/data/models/product_type.dart';
import '../../../src/account/presentation/blocs/account/account_bloc.dart';


@RoutePage()
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  final _productTypeController = TextEditingController();
  final _productFormFieldState = GlobalKey<FormFieldState>();

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
              title: const Text('Account'),
              subtitle: 'View and manage your account',
              trailingIcon: const Icon(Ionicons.chevron_forward_outline),
                leadingIcon: Icon(Ionicons.person_outline, color: Theme.of(context).colorScheme.primary,),
              onPressed: (){
                AutoRouter.of(context).push(const AccountRoute());
              },
            ),
            SecurityRoleHandler(
              modules: const [SecurityModule.branches],
              child: ListTileItem(
                title: const Text('Branches'),
                subtitle: 'View or edit all branches of Clinica',
                trailingIcon: const Icon(Ionicons.chevron_forward_outline),
                leadingIcon: Icon(Ionicons.storefront_outline, color: Theme.of(context).colorScheme.primary,),
                onPressed: (){
                  AutoRouter.of(context).push(const BranchesRoute());
                },
              ),
            ),
            ListTileItem(
              title: const Text('Roles and Modules'),
              subtitle: 'Add or edit user roles and modules',
              trailingIcon: const Icon(Ionicons.chevron_forward_outline),
              leadingIcon: Icon(Ionicons.shield_outline, color: Theme.of(context).colorScheme.primary,),
              onPressed: (){
                AutoRouter.of(context).push(const RolesRoute());
              },
            ),
            BlocProvider<WidgetHelperCubit<bool>>(
              create: (_) => WidgetHelperCubit<bool>(false),
              child: BlocBuilder<WidgetHelperCubit<bool>, bool>(
                builder: (prodTypeCon, hidden) {
                  return Column(
                    children: [
                      ListTileItem(
                        title: const Text('Product types'),
                        subtitle: 'Manage product types',
                        trailingIcon: Icon(!hidden? Ionicons.chevron_forward_outline : Ionicons.chevron_down_outline),
                        leadingIcon: Icon(Ionicons.leaf_outline, color: Theme.of(context).colorScheme.primary,),
                        onPressed: (){
                          prodTypeCon.read<WidgetHelperCubit<bool>>().onUpdateState(!hidden);
                        },
                      ),
                      AnimatedSize(
                        duration: const Duration(milliseconds: 200),
                        child: !hidden? Container() : Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: Card(
                            child: Column(
                              children: [
                                ...context.watch<ProductTypeBloc>().state.productTypes.map((e){
                                  return BlocProvider<WidgetHelperCubit<bool>>(
                                    create: (_) => WidgetHelperCubit<bool>(false),
                                    child: BlocBuilder<WidgetHelperCubit<bool>, bool>(
                                      builder: (editingTypeContext, editingType) {
                                        final controller = TextEditingController(text: e.name);
                                        final formFieldKey = GlobalKey<FormFieldState>();
                                        return ListTileItem(
                                          title: editingType
                                              ? TextFormField(
                                                  key: formFieldKey,
                                                  textInputAction: TextInputAction.done,
                                                  controller: controller,
                                                  validator: (value){
                                                    if(value != null){
                                                      if(value.isEmpty) return 'Please enter type name';
                                                      return null;
                                                    }else{
                                                      return 'Please enter type name';
                                                    }
                                                  },
                                                  onFieldSubmitted: (value){
                                                    editingTypeContext.read<WidgetHelperCubit<bool>>().onUpdateState(!editingType);
                                                    if(formFieldKey.currentState!.validate()){
                                                      context.read<ProductTypeBloc>().add(ProductTypeEvent.onEdit(e.copyWith(name: value)));
                                                    }
                                                  },
                                               )
                                              : Text(e.name),
                                          trailingIcon: IconButton(onPressed: (){
                                            editingTypeContext.read<WidgetHelperCubit<bool>>().onUpdateState(!editingType);
                                          }, icon: Icon(editingType? Ionicons.close_outline : Ionicons.create_outline)),
                                          onLongPress: editingType? null : (){
                                            showDialog(
                                              context: context,
                                              builder: (builder){
                                                return Dialog(
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(24),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisSize: MainAxisSize.min,
                                                      children: [
                                                        Text("Delete '${e.name}' type", style: Theme.of(context).textTheme.headlineSmall,),
                                                        const SizedBox(height: 16,),
                                                        Text('Are you sure you want to delete this product type? You cannot undo this operation.', style: Theme.of(context).textTheme.bodyMedium,),
                                                        const SizedBox(height: 24,),
                                                        Row(children: [
                                                          const Spacer(),
                                                          TextButton(onPressed: (){
                                                            Navigator.pop(context);
                                                          }, child: const Text('Cancel')),
                                                          const SizedBox(width: 8,),
                                                          FilledButton(onPressed: (){
                                                            context.read<ProductTypeBloc>().add(ProductTypeEvent.onDelete(e.id!));
                                                            Navigator.pop(context);
                                                          }, child: const Text('Delete'))
                                                        ],)
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        );
                                      }
                                    ),
                                  );
                                }).toList(),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: BlocProvider<WidgetHelperCubit<bool>>(
                                    create: (_) => WidgetHelperCubit<bool>(false),
                                    child: BlocBuilder<WidgetHelperCubit<bool>, bool>(
                                        builder: (addTypeContext, addingType) {
                                          return Padding(
                                            padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                FilledButton(onPressed: (){
                                                  addTypeContext.read<WidgetHelperCubit<bool>>().onUpdateState(!addingType);
                                                }, child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Icon(!addingType? Ionicons.add : Ionicons.close_outline, size: 18,),
                                                    const SizedBox(width: 8,),
                                                    Text(!addingType? 'Add' : 'Cancel'),
                                                  ],
                                                )),
                                                if(addingType) TextFormField(
                                                  key: _productFormFieldState,
                                                  controller: _productTypeController,
                                                  decoration: InputDecoration(
                                                      labelText: 'Product type',
                                                      suffixIcon: IconButton(
                                                        onPressed: (){
                                                          if(_productFormFieldState.currentState!.validate()){
                                                            context.read<ProductTypeBloc>().add(ProductTypeEvent.onAdd(ProductType(
                                                                name: _productTypeController.text
                                                            )));
                                                            _productTypeController.clear();
                                                          }
                                                        }, icon: const Icon(Ionicons.add),)
                                                  ),
                                                  validator: (value){
                                                    if(value != null){
                                                      if(value.isEmpty) return 'Please enter type name';
                                                      return null;
                                                    }else{
                                                      return 'Please enter type name';
                                                    }
                                                  },
                                                ),
                                              ],
                                            ),
                                          );
                                        }
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                }
              ),
            ),
            ListTileItem(
              title: const Text('Employees'),
              subtitle: 'Add or manage your employees information',
              trailingIcon: const Icon(Ionicons.chevron_forward_outline),
              leadingIcon: Icon(Ionicons.people_outline, color: Theme.of(context).colorScheme.primary,),
              onPressed: (){
                AutoRouter.of(context).push(const EmployeesRoute());
              },
            ),
            const Divider(
              height: 0,
            ),
            ListTileItem(
              title: const Text('Logout'),
              subtitle: 'Logout as ${context.read<AccountBloc>().state.profile?.name}',
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

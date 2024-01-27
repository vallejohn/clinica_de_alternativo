
import 'package:clinica_de_alternativo/src/inventory/core/params.dart';
import 'package:clinica_de_alternativo/src/inventory/presentation/blocs/poduct_type/product_type_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../core/blocs/widget_helper_cubit.dart';
import '../../../../core/global_widgets/list_tile_item.dart';
import '../../../account/data/models/product_type.dart';


class ProductTypeSelectionDialog extends StatelessWidget {
  const ProductTypeSelectionDialog({super.key,});

  @override
  Widget build(BuildContext context) {
    final _productTypeFieldKey = GlobalKey<FormFieldState>();
    final _addProductTypeController = TextEditingController();

    final prodTypeSelectionCubit = WidgetHelperCubit<ProductTypeSelection>(const ProductTypeSelection());

    return BlocBuilder<ProductTypeBloc, ProductTypeState>(
      builder: (typeContext, typeState) {
        return BlocBuilder<WidgetHelperCubit<ProductTypeSelection>, ProductTypeSelection>(
          bloc: prodTypeSelectionCubit,
          builder: (typeSelContext, typeSelState) {
            return Dialog(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 24,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text('Select product type', style: Theme.of(context).textTheme.headlineSmall,),
                  ),
                  const SizedBox(height: 16,),
                  if(typeSelState.editing) Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: TextFormField(
                      key: _productTypeFieldKey,
                      controller: _addProductTypeController,
                      decoration: InputDecoration(
                          labelText: 'Add product type',
                          suffixIcon: IconButton(
                            onPressed: (){
                              if(_productTypeFieldKey.currentState!.validate()){
                                BlocProvider.of<ProductTypeBloc>(context).add(ProductTypeEvent.onAdd(ProductType(
                                    name: _addProductTypeController.text
                                )));
                                _addProductTypeController.clear();
                              }
                            }, icon: const Icon(Ionicons.add),)
                      ),
                      validator: (value){
                        if(value != null){
                          if(value.isEmpty) return 'Enter product type';
                          return null;
                        }else{
                          return 'Enter product type';
                        }
                      },
                    ),
                  ),
                  if(!typeSelState.editing)  ListTileItem(
                    leadingIcon: const CircleAvatar(backgroundColor: Colors.transparent,child: Icon(Ionicons.add,),),
                    title: Text('Add'),
                    onPressed: (){
                      prodTypeSelectionCubit.onUpdateState(typeSelState.copyWith(editing: true));
                    },
                  ),
                  const SizedBox(height: 24),
                  ...typeState.productTypes.map((e) => InkWell(
                    splashColor: Theme.of(context).colorScheme.inversePrimary.withOpacity(0.2),
                    onTap: (){
                      prodTypeSelectionCubit.onUpdateState(typeSelState.copyWith(selectedProductType: e));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Radio<ProductType>(
                            value: e,
                            groupValue: typeSelState.selectedProductType,
                            onChanged: (value){
                              prodTypeSelectionCubit.onUpdateState(typeSelState.copyWith(selectedProductType: value));
                            },
                          ),
                          Text(e.name, style: Theme.of(context).textTheme.bodyLarge,),
                        ],
                      ),
                    ),
                  )).toList(),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel'),
                        ),
                        const SizedBox(width: 8,),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, typeSelState.selectedProductType);
                          },
                          child: const Text('Ok'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24,),
                ],
              ),
            );
          }
        );
      }
    );
  }
}

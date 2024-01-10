import 'dart:async';

import 'package:clinica_de_alternativo/src/inventory/domain/product_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../data/model/product.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final _onFetchListUseCase = GetIt.instance<OnFetchProductsUseCase>();
  final _onAddUseCase = GetIt.instance<OnAddProductUseCase>();

  ProductsBloc() : super(ProductsState()) {
    on<_OnFetchList>(_onFetchList);
    on<_OnAdd>(_onAdd);
  }

  FutureOr<void> _onFetchList(_OnFetchList event, Emitter<ProductsState> emit)async {
    emit(state.copyWith(status: ProductStatus.loading));

    final dataOrError = await _onFetchListUseCase();

    dataOrError.fold((l){
      emit(state.copyWith(status: ProductStatus.failed, message: l.when(firebase: (error) => error.message!,)));
    }, (products){
      emit(state.copyWith(status: ProductStatus.success, message: 'Fetched successfully', products: products));
    });
  }

  FutureOr<void> _onAdd(_OnAdd event, Emitter<ProductsState> emit)async {
    emit(state.copyWith(status: ProductStatus.loading));

    final dataOrError = await _onAddUseCase(event.product);

    dataOrError.fold((l){
      emit(state.copyWith(status: ProductStatus.failed, message: l.when(firebase: (error) => error.message!,)));
    }, (_){
      final products = [...state.products];
      products.add(event.product);

      emit(state.copyWith(status: ProductStatus.success, message: 'Added successfully', products: products));
    });
  }
}

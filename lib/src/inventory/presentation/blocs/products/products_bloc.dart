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
  final _onUpdateUseCase = GetIt.instance<OnUpdateProductUseCase>();
  final _onDeleteUseCase = GetIt.instance<OnDeleteProductUseCase>();

  ProductsBloc() : super(ProductsState()) {
    on<_OnFetchList>(_onFetchList);
    on<_OnAdd>(_onAdd);
    on<_OnEdit>(_onEdit);
    on<_OnDoneEditing>(_onDoneEditing);
    on<_OnCancelEditing>(_onCancelEditing);
    on<_OnSetSelectedProduct>(_onSetSelectedProducts);
    on<_OnDeleteSelectedProduct>(_onDeleteSelectedProduct);
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

  FutureOr<void> _onEdit(_OnEdit event, Emitter<ProductsState> emit) {
    emit(state.copyWith(editing: true));
  }

  FutureOr<void> _onDoneEditing(_OnDoneEditing event, Emitter<ProductsState> emit)async {
    emit(state.copyWith(status: ProductStatus.loading));

    final dataOrError = await _onUpdateUseCase(event.product);

    dataOrError.fold((l){
      emit(state.copyWith(status: ProductStatus.failed, message: l.when(firebase: (error) => error.message!,)));
    }, (_){
      final products = [...state.products];

      //Remove and replace old product on list with updated
      products.removeWhere((element) => element.id == event.product.id);
      products.add(event.product);
      //-----------------------------------------

      emit(state.copyWith(status: ProductStatus.success, editing: false, message: 'Product updated', products: products, selectedProduct: event.product));
    });
  }

  FutureOr<void> _onCancelEditing(_OnCancelEditing event, Emitter<ProductsState> emit) {
    emit(state.copyWith(editing: false));
  }

  FutureOr<void> _onSetSelectedProducts(_OnSetSelectedProduct event, Emitter<ProductsState> emit) {
    emit(state.copyWith(selectedProduct: event.product));
  }

  FutureOr<void> _onDeleteSelectedProduct(_OnDeleteSelectedProduct event, Emitter<ProductsState> emit)async {
    emit(state.copyWith(status: ProductStatus.loading));

    final dataOrError = await _onDeleteUseCase(state.selectedProduct!.id!);

    dataOrError.fold((l){
      emit(state.copyWith(status: ProductStatus.failed, message: l.when(firebase: (error) => error.message!,)));
    }, (_){
      final products = [...state.products];

      //Remove and replace old product on list with updated
      products.removeWhere((element) => element.id == state.selectedProduct!.id!);
      //-----------------------------------------

      emit(state.copyWith(status: ProductStatus.success, editing: false, message: 'Product updated', products: products, selectedProduct: null));
    });
  }
}

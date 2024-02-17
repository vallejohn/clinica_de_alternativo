import 'dart:async';

import 'package:clinica_de_alternativo/core/extensions.dart';
import 'package:clinica_de_alternativo/src/inventory/domain/product_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clinica_de_alternativo/src/account/data/models/product_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../../../core/exceptions/failure.dart';

part 'product_type_event.dart';
part 'product_type_state.dart';
part 'product_type_bloc.freezed.dart';

class ProductTypeBloc extends Bloc<ProductTypeEvent, ProductTypeState> {
  final _onFetchListUseCase = GetIt.instance<OnFetchProductTypesUseCase>();
  final _onAddUseCase = GetIt.instance<OnAddProductTypeUseCase>();
  final _onEditUseCase = GetIt.instance<OnEditProductTypeUseCase>();
  final _onDeleteUseCase = GetIt.instance<OnDeleteProductTypeUseCase>();

  ProductTypeBloc() : super(ProductTypeState()) {
    on<_OnStarted>((event, emit) => emit(state.copyWith(productTypes: event.types)));
    on<_OnFetch>(_onFetchList);
    on<_OnAdd>(_onAdd);
    on<_OnEdit>(_onEdit);
    on<_OnDelete>(_onDelete);
  }

  FutureOr<void> _onFetchList(_OnFetch event, Emitter<ProductTypeState> emit)async {
    emit(state.copyWith(status: ProductTypeStatus.loading));

    final dataOrError = await _onFetchListUseCase();

    dataOrError.fold((l){
      emit(state.copyWith(status: ProductTypeStatus.failed, message: l.getMessage(), errorCode: l.getCode()));
    }, (types){
      emit(state.copyWith(status: ProductTypeStatus.success, message: 'Fetched successfully', productTypes: types));
    });
  }

  FutureOr<void> _onAdd(_OnAdd event, Emitter<ProductTypeState> emit)async {
    emit(state.copyWith(status: ProductTypeStatus.loading));

    final dataOrError = await _onAddUseCase(event.type);

    dataOrError.fold((l){
      emit(state.copyWith(status: ProductTypeStatus.failed, message: l.getMessage(), errorCode: l.getCode()));
    }, (type){
      final types = [...state.productTypes];
      types.add(type);

      emit(state.copyWith(status: ProductTypeStatus.success, message: 'Added successfully', productTypes: types));
    });
  }

  FutureOr<void> _onEdit(_OnEdit event, Emitter<ProductTypeState> emit)async {
    emit(state.copyWith(status: ProductTypeStatus.loading));

    final dataOrError = await _onEditUseCase(event.type);

    dataOrError.fold((l){
      emit(state.copyWith(status: ProductTypeStatus.failed, message: l.getMessage(), errorCode: l.getCode()));
    }, (_){
      final types = [...state.productTypes];
      final index = types.indexWhere((element) => element.id == event.type.id);
      types.replaceRange(index, index + 1, [event.type]);
      emit(state.copyWith(status: ProductTypeStatus.success, message: 'Saved successfully', productTypes: types));
    });
  }

  FutureOr<void> _onDelete(_OnDelete event, Emitter<ProductTypeState> emit)async {
    emit(state.copyWith(status: ProductTypeStatus.loading));

    final dataOrError = await _onDeleteUseCase(event.id);

    dataOrError.fold((l){
      emit(state.copyWith(status: ProductTypeStatus.failed, message: l.getMessage(), errorCode: l.getCode()));
    }, (_){
      final types = [...state.productTypes];
      types.removeWhere((element) => element.id == event.id);
      emit(state.copyWith(status: ProductTypeStatus.success, message: 'Deleted successfully', productTypes: types));
    });
  }
}

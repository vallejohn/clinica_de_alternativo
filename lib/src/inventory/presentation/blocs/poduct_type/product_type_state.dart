part of 'product_type_bloc.dart';

enum ProductTypeStatus{initial, loading, success, failed}

@freezed
class ProductTypeState with _$ProductTypeState {
  factory ProductTypeState({
    @Default(ProductTypeStatus.initial) ProductTypeStatus status,
    @Default('') String message,
    ErrorCode? errorCode,
    @Default([]) List<ProductType> productTypes,
    @Default(false) bool editing,
  }) = _ProductTypeState;
}

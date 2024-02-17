part of 'products_bloc.dart';

enum ProductStatus{initial, loading, success, failed}

@freezed
class ProductsState with _$ProductsState {
  factory ProductsState({
    @Default(ProductStatus.initial) ProductStatus status,
    @Default('') String message,
    ErrorCode? errorCode,
    @Default([]) List<Product> products,
    @Default(false) bool editing,
    Product? selectedProduct,
  }) = _ProductsState;
}

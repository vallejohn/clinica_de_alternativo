part of 'search_product_cubit.dart';

enum SearchProductStatus{initial, loading, success, failed}

@freezed
class SearchProductState with _$SearchProductState {
  factory SearchProductState({
    @Default(SearchProductStatus.initial) SearchProductStatus status,
    @Default('') String message,
    @Default([]) List<Product> products,
    Product? selectedProduct,
  }) = _SearchProductState;
}

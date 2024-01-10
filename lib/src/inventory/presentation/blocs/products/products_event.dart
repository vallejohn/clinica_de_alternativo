part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.onFetchList() = _OnFetchList;
  const factory ProductsEvent.onAdd(Product product) = _OnAdd;
}

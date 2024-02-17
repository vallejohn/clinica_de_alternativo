part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.onStarted(List<Product> types) = _OnStarted;
  const factory ProductsEvent.onFetchList() = _OnFetchList;
  const factory ProductsEvent.onSetSelectedProduct(Product product) = _OnSetSelectedProduct;
  const factory ProductsEvent.onAdd(Product product) = _OnAdd;
  const factory ProductsEvent.onEdit() = _OnEdit;
  const factory ProductsEvent.onDoneEditing(Product product) = _OnDoneEditing;
  const factory ProductsEvent.onCancelEditing() = _OnCancelEditing;
  const factory ProductsEvent.onDeleteSelectedProduct() = _OnDeleteSelectedProduct;
}

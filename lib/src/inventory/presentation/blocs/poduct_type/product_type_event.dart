part of 'product_type_bloc.dart';

@freezed
class ProductTypeEvent with _$ProductTypeEvent {
  const factory ProductTypeEvent.onFetch() = _OnFetch;
  const factory ProductTypeEvent.onAdd(ProductType type) = _OnAdd;
  const factory ProductTypeEvent.onEdit(ProductType type) = _OnEdit;
    const factory ProductTypeEvent.onDelete(String id) = _OnDelete;
}

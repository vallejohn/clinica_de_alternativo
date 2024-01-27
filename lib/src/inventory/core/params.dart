import 'package:equatable/equatable.dart';

import '../../account/data/models/product_type.dart';

class ProductTypeSelection extends Equatable{
  final ProductType? selectedProductType;
  final bool editing;

  const ProductTypeSelection({this.selectedProductType, this.editing = false});

  ProductTypeSelection copyWith({
    ProductType? selectedProductType,
    bool? editing,
  }){
    return ProductTypeSelection(
      selectedProductType: selectedProductType?? this.selectedProductType,
      editing: editing?? this.editing,
    );
  }

  @override
  List<Object?> get props => [selectedProductType, editing];
}
import 'package:clinica_de_alternativo/core/models/paginate.dart';
import 'package:clinica_de_alternativo/src/account/data/models/product_type.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../inventory/data/model/product.dart';

class SalesReportingFilterParam extends Equatable{
  final List<Product> products;
  final List<ProductType> productTypes;
  final DateTimeRange dateTimeRange;

  const SalesReportingFilterParam({this.products = const [], this.productTypes = const [], required this.dateTimeRange});


  @override
  List<Object?> get props => [productTypes, products, dateTimeRange];
}

class FetchSalesReportsParam extends Equatable{
  final SalesReportingFilterParam? salesReportingFilterParam;
  final Paginate paginate;

  const FetchSalesReportsParam({this.salesReportingFilterParam, this.paginate = const Paginate()});
  @override
  // TODO: implement props
  List<Object?> get props => [salesReportingFilterParam, paginate];

}
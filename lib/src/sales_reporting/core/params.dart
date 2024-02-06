import 'package:clinica_de_alternativo/core/models/paginate.dart';
import 'package:clinica_de_alternativo/src/account/data/models/product_type.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../account/data/models/branch.dart';
import '../../inventory/data/model/product.dart';

class SalesReportingFilterParam extends Equatable{
  final List<Product> products;
  final List<ProductType> productTypes;
  final List<Branch> branches;
  final Branch? branch;
  final DateTimeRange? dateTimeRange;

  const SalesReportingFilterParam({this.products = const [], this.branch, this.branches = const [], this.productTypes = const [], this.dateTimeRange});


  @override
  List<Object?> get props => [productTypes, products, dateTimeRange, branch, branches];
}

class FetchSalesReportsParam extends Equatable{
  final SalesReportingFilterParam? salesReportingFilterParam;
  final Paginate paginate;

  const FetchSalesReportsParam({this.salesReportingFilterParam, this.paginate = const Paginate()});
  @override
  // TODO: implement props
  List<Object?> get props => [salesReportingFilterParam, paginate];

}
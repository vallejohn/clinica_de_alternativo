import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failure.dart';
import '../../data/datasources/datasource.dart';
import '../../data/model/product.dart';

abstract class ProductRepository{
  final ProductDatasource productDatasource;
  ProductRepository({required this.productDatasource});

  Future<Either<Failure, List<Product>>> fetchProducts();
  Future<Either<Failure, Product>> addProduct(Product param);
  Future<Either<Failure, bool>> updateProduct(Product param);
  Future<Either<Failure, bool>> deleteProduct(String id);
}
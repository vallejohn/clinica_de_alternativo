import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failure.dart';
import '../../../account/data/models/product_type.dart';
import '../../data/datasources/datasource.dart';
import '../../data/model/product.dart';

abstract class ProductRepository{
  final ProductDatasource productDatasource;
  ProductRepository({required this.productDatasource});

  Future<Either<Failure, List<Product>>> fetchProducts();
  Future<Either<Failure, Product>> addProduct(Product param);
  Future<Either<Failure, bool>> updateProduct(Product param);
  Future<Either<Failure, bool>> deleteProduct(String id);
  Future<Either<Failure, List<ProductType>>> fetchProductType();
  Future<Either<Failure, ProductType>> addProductType(ProductType param);
  Future<Either<Failure, bool>> editProductType(ProductType param);
  Future<Either<Failure, bool>> deleteProductType(String id);
}
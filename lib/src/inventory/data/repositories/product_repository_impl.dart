import 'package:clinica_de_alternativo/src/inventory/data/model/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failure.dart';
import '../../domain/repositories/product_repository.dart';
import '../datasources/datasource.dart';

class ProductRepositoryImpl extends ProductRepository {
  ProductRepositoryImpl({
    required ProductDatasource productDatasource,
  }) : super(productDatasource: productDatasource,);

  @override
  Future<Either<Failure, Product>> addProduct(Product param)async {
    try{
      final dataState = await productDatasource.addProduct(param);
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }

  @override
  Future<Either<Failure, List<Product>>> fetchProducts()async {
    try{
      final dataState = await productDatasource.fetchProducts();
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }

  @override
  Future<Either<Failure, bool>> updateProduct(Product param)async {
    try{
      final dataState = await productDatasource.updateProduct(param);
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteProduct(String id)async {
    try{
      final dataState = await productDatasource.deleteProduct(id);
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }
}

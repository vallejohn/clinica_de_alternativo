part of 'datasource.dart';

abstract class ProductDatasource{
  ProductDatasource();

  Future<List<Product>> fetchProducts();
  Future<bool> addProduct(Product param);
}
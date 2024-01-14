part of 'datasource.dart';

abstract class ProductDatasource{
  ProductDatasource();

  Future<List<Product>> fetchProducts();
  Future<Product> addProduct(Product param);
  Future<bool> updateProduct(Product param);
  Future<bool> deleteProduct(String id);
}
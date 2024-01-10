part of 'datasource.dart';

class ProductDatasourceImpl extends ProductDatasource{

  @override
  Future<List<Product>> fetchProducts()async {
    final result = await FirestoreCollection.products().get();
    return result.docs.map((e) => Product.fromJson(e.data())).toList();
  }

  @override
  Future<bool> addProduct(Product param)async {
    await FirestoreCollection.products().add(param.toJson());
    return true;
  }
}
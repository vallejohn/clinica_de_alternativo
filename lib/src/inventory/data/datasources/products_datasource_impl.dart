part of 'datasource.dart';

class ProductDatasourceImpl extends ProductDatasource{

  @override
  Future<List<Product>> fetchProducts()async {
    final result = await FirestoreCollection.products().get();
    return result.docs.map((e) => Product.fromJson(e.data())).toList();
  }

  @override
  Future<bool> addProduct(Product param)async {
    final product = param.copyWith(code: const Uuid().v1());
    await FirestoreCollection.products().add(product.toJson());
    return true;
  }
}
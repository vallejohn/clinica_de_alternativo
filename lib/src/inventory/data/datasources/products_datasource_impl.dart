part of 'datasource.dart';

class ProductDatasourceImpl extends ProductDatasource{

  @override
  Future<List<Product>> fetchProducts()async {
    final result = await FirestoreCollection.products().get();
    return result.docs.map((e) => Product.fromJson(e.data()).copyWith(id: e.id)).toList();
  }

  @override
  Future<bool> addProduct(Product param)async {
    final product = param.copyWith(code: const Uuid().v1());
    await FirestoreCollection.products().add(product.toJson());
    return true;
  }

  @override
  Future<bool> updateProduct(Product param)async {
    await FirestoreCollection.products().doc(param.id).update(param.toJson());
    return true;
  }

  @override
  Future<bool> deleteProduct(String id)async {
    await FirestoreCollection.products().doc(id).delete();
    return true;
  }
}
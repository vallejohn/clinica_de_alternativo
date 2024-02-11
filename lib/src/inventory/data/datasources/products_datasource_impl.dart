part of 'datasource.dart';

class ProductDatasourceImpl extends ProductDatasource{

  @override
  Future<List<Product>> fetchProducts()async {
    appLogger.wtf('fetching productsssss');
    final result = await FirestoreCollection.products().get();
    return result.docs.map((e) => Product.fromJson(e.data()).copyWith(id: e.id)).toList();
  }

  @override
  Future<Product> addProduct(Product param)async {
    final product = param.copyWith(code: const Uuid().v1());
    Map<String, dynamic> productMap = product.toJson();
    productMap.remove('type');
    productMap.addAll({'type': product.type!.toJson()});
    final result = await FirestoreCollection.products().add(productMap);

    return product.copyWith(id: result.id);
  }

  @override
  Future<bool> updateProduct(Product param)async {
    Map<String, dynamic> productMap = param.toJson();
    productMap.remove('type');
    productMap.addAll({'type': param.type!.toJson()});
    await FirestoreCollection.products().doc(param.id).update(productMap);
    return true;
  }

  @override
  Future<bool> deleteProduct(String id)async {
    await FirestoreCollection.products().doc(id).delete();
    return true;
  }

  @override
  Future<ProductType> addProductType(ProductType param)async {
    final type = param.copyWith(code: const Uuid().v1());
    final result = await FirestoreCollection.productTypes().add(type.toJson());

    return type.copyWith(id: result.id);
  }

  @override
  Future<List<ProductType>> fetchProductTypes()async {
    final result = await FirestoreCollection.productTypes().get();
    return result.docs.map((e) => ProductType.fromJson(e.data()).copyWith(id: e.id)).toList();
  }

  @override
  Future<bool> deleteProductType(String id)async {
    await FirestoreCollection.productTypes().doc(id).delete();
    return true;
  }

  @override
  Future<bool> editProductType(ProductType param)async {
    await FirestoreCollection.productTypes().doc(param.id).update(param.toJson());
    return true;
  }
}
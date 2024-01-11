part of 'datasource.dart';

class AuthenticationDatasourceImpl extends  AuthenticationDatasource{
  @override
  Future<bool> onLogin(LoginParams params)async {
    final credentials = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: params.username, password: params.password,
    );

    return credentials.user != null;
  }
/*
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
  }*/
}
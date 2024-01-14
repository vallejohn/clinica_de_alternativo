part of '../product_usecases.dart';

class OnAddProductUseCase extends UseCaseWithParams<Product, Product>{
  final ProductRepository _productRepository;

  OnAddProductUseCase(this._productRepository);
  @override
  Future<Either<Failure, Product>> call(Product params) {
    return _productRepository.addProduct(params);
  }
}
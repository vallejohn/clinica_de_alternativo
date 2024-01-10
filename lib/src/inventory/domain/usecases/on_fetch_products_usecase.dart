part of '../product_usecases.dart';

class OnFetchProductsUseCase extends UseCaseWithNoParams<List<Product>>{
  final ProductRepository _productRepository;

  OnFetchProductsUseCase(this._productRepository);
  @override
  Future<Either<Failure, List<Product>>> call() {
    return _productRepository.fetchProducts();
  }
}
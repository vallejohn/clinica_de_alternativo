part of '../product_usecases.dart';

class OnAddProductUseCase extends UseCaseWithParams<bool, Product>{
  final ProductRepository _productRepository;

  OnAddProductUseCase(this._productRepository);
  @override
  Future<Either<Failure, bool>> call(Product params) {
    return _productRepository.addProduct(params);
  }
}
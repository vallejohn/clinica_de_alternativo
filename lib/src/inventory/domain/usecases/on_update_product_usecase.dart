part of '../product_usecases.dart';

class OnUpdateProductUseCase extends UseCaseWithParams<bool, Product>{
  final ProductRepository _productRepository;

  OnUpdateProductUseCase(this._productRepository);
  @override
  Future<Either<Failure, bool>> call(Product params) {
    return _productRepository.updateProduct(params);
  }
}
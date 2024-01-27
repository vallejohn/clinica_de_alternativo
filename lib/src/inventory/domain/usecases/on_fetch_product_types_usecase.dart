part of '../product_usecases.dart';

class OnFetchProductTypesUseCase extends UseCaseWithNoParams<List<ProductType>>{
  final ProductRepository _productRepository;

  OnFetchProductTypesUseCase(this._productRepository);
  @override
  Future<Either<Failure, List<ProductType>>> call() {
    return _productRepository.fetchProductType();
  }
}
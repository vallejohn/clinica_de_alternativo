part of '../product_usecases.dart';

class OnEditProductTypeUseCase extends UseCaseWithParams<bool, ProductType>{
  final ProductRepository _productRepository;

  OnEditProductTypeUseCase(this._productRepository);
  @override
  Future<Either<Failure, bool>> call(ProductType params) {
    return _productRepository.editProductType(params);
  }
}
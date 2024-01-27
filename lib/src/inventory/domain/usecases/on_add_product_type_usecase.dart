part of '../product_usecases.dart';

class OnAddProductTypeUseCase extends UseCaseWithParams<ProductType, ProductType>{
  final ProductRepository _productRepository;

  OnAddProductTypeUseCase(this._productRepository);
  @override
  Future<Either<Failure, ProductType>> call(ProductType params) {
    return _productRepository.addProductType(params);
  }
}
part of '../product_usecases.dart';

class OnDeleteProductTypeUseCase extends UseCaseWithParams<bool, String>{
  final ProductRepository _productRepository;

  OnDeleteProductTypeUseCase(this._productRepository);
  @override
  Future<Either<Failure, bool>> call(String params) {
    return _productRepository.deleteProductType(params);
  }
}
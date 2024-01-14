part of '../product_usecases.dart';

class OnDeleteProductUseCase extends UseCaseWithParams<bool, String>{
  final ProductRepository _productRepository;

  OnDeleteProductUseCase(this._productRepository);
  @override
  Future<Either<Failure, bool>> call(String params) {
    return _productRepository.deleteProduct(params);
  }
}
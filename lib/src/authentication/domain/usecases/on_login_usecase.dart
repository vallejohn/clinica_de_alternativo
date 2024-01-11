part of '../authentication_usecases.dart';

class OnLoginUseCase extends UseCaseWithParams<bool, LoginParams>{
  final AuthenticationRepository _authenticationRepository;

  OnLoginUseCase(this._authenticationRepository);
  @override
  Future<Either<Failure, bool>> call(LoginParams params) {
    return _authenticationRepository.doLogin(params);
  }
}
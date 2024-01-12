part of '../authentication_usecases.dart';

class OnCheckProfileUseCase extends UseCaseWithParams<ProfileInformation?, String>{
  final AuthenticationRepository _authenticationRepository;

  OnCheckProfileUseCase(this._authenticationRepository);
  @override
  Future<Either<Failure, ProfileInformation?>> call(String params) {
    return _authenticationRepository.checkAccountInformation(params);
  }
}
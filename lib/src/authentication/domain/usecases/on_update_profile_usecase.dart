part of '../authentication_usecases.dart';

class OnUpdateProfileUseCase extends UseCaseWithParams<bool, ProfileInformation>{
  final AuthenticationRepository _authenticationRepository;

  OnUpdateProfileUseCase(this._authenticationRepository);
  @override
  Future<Either<Failure, bool>> call(ProfileInformation params) {
    return _authenticationRepository.onUpdateProfile(params);
  }
}
part of '../account_usecases.dart';

class OnUpdateAccountDetailsUseCase extends UseCaseWithParams<bool, ProfileInformation>{
  final AccountRepository _accountRepository;

  OnUpdateAccountDetailsUseCase(this._accountRepository);
  @override
  Future<Either<Failure, bool>> call(ProfileInformation params) {
    return _accountRepository.updateAccountDetails(params);
  }
}
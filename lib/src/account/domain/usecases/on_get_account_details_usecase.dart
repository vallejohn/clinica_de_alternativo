part of '../account_usecases.dart';

class OnGetAccountDetailsUseCase extends UseCaseWithParams<ProfileInformation?, String>{
  final AccountRepository _accountRepository;

  OnGetAccountDetailsUseCase(this._accountRepository);
  @override
  Future<Either<Failure, ProfileInformation?>> call(String params) {
    return _accountRepository.getAccountDetails(params);
  }
}
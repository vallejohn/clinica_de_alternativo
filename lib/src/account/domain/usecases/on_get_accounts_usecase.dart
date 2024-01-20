part of '../account_usecases.dart';

class OnGetAccountsUseCase extends UseCaseWithNoParams<List<ProfileInformation>>{
  final AccountRepository _accountRepository;

  OnGetAccountsUseCase(this._accountRepository);
  @override
  Future<Either<Failure, List<ProfileInformation>>> call() {
    return _accountRepository.geAccountList();
  }
}
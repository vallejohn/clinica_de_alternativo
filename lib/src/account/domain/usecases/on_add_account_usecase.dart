part of '../account_usecases.dart';

class OnAddAccountUseCase extends UseCaseWithParams<ProfileInformation, AddAccountParams>{
  final AccountRepository _accountRepository;

  OnAddAccountUseCase(this._accountRepository);
  @override
  Future<Either<Failure, ProfileInformation>> call(AddAccountParams params) {
    return _accountRepository.addAccount(params);
  }
}
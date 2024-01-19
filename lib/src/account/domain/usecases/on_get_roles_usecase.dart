part of '../account_usecases.dart';

class OnGetRolesUseCase extends UseCaseWithNoParams<List<Role>>{
  final AccountRepository _accountRepository;

  OnGetRolesUseCase(this._accountRepository);
  @override
  Future<Either<Failure, List<Role>>> call() {
    return _accountRepository.getRoleList();
  }
}
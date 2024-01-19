part of '../account_usecases.dart';

class OnAddRoleUseCase extends UseCaseWithParams<Role, Role>{
  final AccountRepository _accountRepository;

  OnAddRoleUseCase(this._accountRepository);
  @override
  Future<Either<Failure, Role>> call(Role params) {
    return _accountRepository.addRole(params);
  }
}
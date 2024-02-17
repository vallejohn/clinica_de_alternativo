part of '../account_usecases.dart';

class OnUpdateRoleUseCase extends UseCaseWithParams<bool, Role>{
  final AccountRepository _accountRepository;

  OnUpdateRoleUseCase(this._accountRepository);
  @override
  Future<Either<Failure, bool>> call(Role params) {
    return _accountRepository.updateRole(params);
  }
}
part of '../account_usecases.dart';

class OnDeleteRoleUseCase extends UseCaseWithParams<bool, Role>{
  final AccountRepository _accountRepository;

  OnDeleteRoleUseCase(this._accountRepository);
  @override
  Future<Either<Failure, bool>> call(Role params) {
    return _accountRepository.deleteRole(params);
  }
}
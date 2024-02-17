part of '../account_usecases.dart';

class OnAddModuleUseCase extends UseCaseWithParams<Module, Module>{
  final AccountRepository _accountRepository;

  OnAddModuleUseCase(this._accountRepository);
  @override
  Future<Either<Failure, Module>> call(Module params) {
    return _accountRepository.addModule(params);
  }
}
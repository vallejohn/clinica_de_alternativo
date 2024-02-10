part of '../account_usecases.dart';

class OnGetModulesUseCase extends UseCaseWithNoParams<List<Module>>{
  final AccountRepository _accountRepository;

  OnGetModulesUseCase(this._accountRepository);
  @override
  Future<Either<Failure, List<Module>>> call() {
    return _accountRepository.getModuleList();
  }
}
part of '../account_usecases.dart';

class OnAddBranchUseCase extends UseCaseWithParams<Branch, Branch>{
  final AccountRepository _accountRepository;

  OnAddBranchUseCase(this._accountRepository);
  @override
  Future<Either<Failure, Branch>> call(Branch params) {
    return _accountRepository.addBranch(params);
  }
}
part of '../account_usecases.dart';

class OnGetBranchesUseCase extends UseCaseWithNoParams<List<Branch>>{
  final AccountRepository _accountRepository;

  OnGetBranchesUseCase(this._accountRepository);
  @override
  Future<Either<Failure, List<Branch>>> call() {
    return _accountRepository.getBranchList();
  }
}
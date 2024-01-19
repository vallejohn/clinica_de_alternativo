part of 'datasource.dart';

abstract class AccountDatasource{
  AccountDatasource();

  Future<List<Branch>> getBranchList();
  Future<Branch> addBranch(Branch branch);
}
part of 'datasource.dart';

abstract class AccountDatasource{
  AccountDatasource();

  Future<ProfileInformation?> getAccountDetails(String id);
  Future<bool> updateAccountDetails(ProfileInformation profile);

  Future<List<Branch>> getBranchList();
  Future<Branch> addBranch(Branch branch);

  Future<List<Role>> getRoleList();
  Future<Role> addRole(Role role);
}
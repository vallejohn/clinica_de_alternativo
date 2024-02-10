part of 'datasource.dart';

abstract class AccountDatasource{
  AccountDatasource();

  Future<ProfileInformation?> getAccountDetails(String id);
  Future<bool> updateAccountDetails(ProfileInformation profile);

  Future<List<ProfileInformation>> geAccountList();
  Future<ProfileInformation> addAccount(AddAccountParams params);

  Future<List<Branch>> getBranchList();
  Future<Branch> addBranch(Branch branch);

  Future<List<Role>> getRoleList();
  Future<Role> addRole(Role role);

  Future<List<Module>> getModuleList();
  Future<Module> addModule(Module module);
}
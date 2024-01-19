part of 'datasource.dart';

class AccountDatasourceImpl extends  AccountDatasource{

  @override
  Future<List<Branch>> getBranchList()async {
    final result = await FirestoreCollection.branch().get();
    return result.docs.map((e) => Branch.fromJson(e.data()).copyWith(id: e.id)).toList();
  }

  @override
  Future<Branch> addBranch(Branch branch)async {
    final result = await FirestoreCollection.branch().add(branch.toJson());
    return branch.copyWith(id: result.id);
  }

  @override
  Future<Role> addRole(Role role)async {
    final modifiedRole = role.copyWith(code: role.name.replaceAll(' ', '_').toLowerCase());
    final result = await FirestoreCollection.roles().add(modifiedRole.toJson());
    return modifiedRole.copyWith(id: result.id);
  }

  @override
  Future<List<Role>> getRoleList()async {
    final result = await FirestoreCollection.roles().get();
    return result.docs.map((e) => Role.fromJson(e.data()).copyWith(id: e.id)).toList();
  }
}
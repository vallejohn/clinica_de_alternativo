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
}
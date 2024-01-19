import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failure.dart';
import '../../data/datasources/datasource.dart';
import '../../data/models/branch.dart';
import '../../data/models/role.dart';

abstract class AccountRepository{
  final AccountDatasource accountDatasource;
  AccountRepository({required this.accountDatasource});

  Future<Either<Failure, List<Branch>>> getBranchList();
  Future<Either<Failure, Branch>> addBranch(Branch branch);

  Future<Either<Failure, List<Role>>> getRoleList();
  Future<Either<Failure, Role>> addRole(Role role);
}
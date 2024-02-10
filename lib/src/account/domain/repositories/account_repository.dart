import 'package:clinica_de_alternativo/src/account/data/models/module.dart';
import 'package:clinica_de_alternativo/src/authentication/data/model/profile_information.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failure.dart';
import '../../core/params.dart';
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

  Future<Either<Failure, ProfileInformation?>> getAccountDetails(String id);
  Future<Either<Failure, bool>> updateAccountDetails(ProfileInformation profile);

  Future<Either<Failure, ProfileInformation>> addAccount(AddAccountParams params);
  Future<Either<Failure, List<ProfileInformation>>> geAccountList();

  Future<Either<Failure, List<Module>>> getModuleList();
  Future<Either<Failure, Module>> addModule(Module module);
}
import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failure.dart';
import '../../data/datasources/datasource.dart';
import '../../data/models/branch.dart';

abstract class AccountRepository{
  final AccountDatasource accountDatasource;
  AccountRepository({required this.accountDatasource});

  Future<Either<Failure, List<Branch>>> getBranchList();
  Future<Either<Failure, Branch>> addBranch(Branch branch);
}
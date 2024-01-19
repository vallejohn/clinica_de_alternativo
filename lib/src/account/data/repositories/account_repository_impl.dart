import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failure.dart';
import '../../domain/repositories/account_repository.dart';
import '../datasources/datasource.dart';
import '../models/branch.dart';

class AccountRepositoryImpl extends AccountRepository {
  AccountRepositoryImpl({
    required AccountDatasource accountDatasource,
  }) : super(accountDatasource: accountDatasource,);

  @override
  Future<Either<Failure, List<Branch>>> getBranchList()async {
    try{
      final dataState = await accountDatasource.getBranchList();
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }

  @override
  Future<Either<Failure, Branch>> addBranch(Branch branch)async {
    try{
      final dataState = await accountDatasource.addBranch(branch);
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }
}

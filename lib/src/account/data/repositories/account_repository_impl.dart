import 'package:clinica_de_alternativo/core/core.dart';
import 'package:clinica_de_alternativo/core/exceptions/duplicate_record_exception.dart';
import 'package:clinica_de_alternativo/src/account/core/params.dart';
import 'package:clinica_de_alternativo/src/account/data/models/module.dart';
import 'package:clinica_de_alternativo/src/account/data/models/role.dart';
import 'package:clinica_de_alternativo/src/authentication/data/model/profile_information.dart';
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

  @override
  Future<Either<Failure, Role>> addRole(Role role)async {
    try{
      final dataState = await accountDatasource.addRole(role);
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }on DuplicateRecordException catch(e){
      return Left(Failure.documentException(e));
    }
  }

  @override
  Future<Either<Failure, List<Role>>> getRoleList()async {
    try{
      final dataState = await accountDatasource.getRoleList();
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }

  @override
  Future<Either<Failure, ProfileInformation?>> getAccountDetails(String id)async {
    try{
      final dataState = await accountDatasource.getAccountDetails(id);
      return Right(dataState);
    }on FirebaseException catch(e){
      appLogger.e(e.message);
      return Left(Failure.firebase(e));
    }
  }

  @override
  Future<Either<Failure, bool>> updateAccountDetails(ProfileInformation profile)async {
    try{
      final dataState = await accountDatasource.updateAccountDetails(profile);
      return Right(dataState);
    }on FirebaseException catch(e){
      appLogger.e(e.code);
      return Left(Failure.firebase(e));
    }
  }

  @override
  Future<Either<Failure, ProfileInformation>> addAccount(AddAccountParams params)async {
    try{
      final dataState = await accountDatasource.addAccount(params);
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }

  @override
  Future<Either<Failure, List<ProfileInformation>>> geAccountList()async {
    try{
      final dataState = await accountDatasource.geAccountList();
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }

  @override
  Future<Either<Failure, Module>> addModule(Module module)async {
    try{
      final dataState = await accountDatasource.addModule(module);
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }on DuplicateRecordException catch(e){
      return Left(Failure.documentException(e));
    }
  }

  @override
  Future<Either<Failure, List<Module>>> getModuleList()async {
    try{
      final dataState = await accountDatasource.getModuleList();
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }

  @override
  Future<Either<Failure, bool>> updateRole(Role role)async {
    try{
      final dataState = await accountDatasource.updateRole(role);
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }
}

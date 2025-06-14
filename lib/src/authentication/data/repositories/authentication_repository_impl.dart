import 'package:clinica_de_alternativo/core/exceptions/failure.dart';
import 'package:clinica_de_alternativo/src/authentication/core/params.dart';
import 'package:clinica_de_alternativo/src/authentication/data/datasources/datasource.dart';
import 'package:clinica_de_alternativo/src/authentication/data/model/profile_information.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  AuthenticationRepositoryImpl({
    required AuthenticationDatasource authenticationDatasource,
  }) : super(authenticationDatasource: authenticationDatasource,);

  @override
  Future<Either<Failure, bool>> doLogin(LoginParams params)async {
    try{
      final dataState = await authenticationDatasource.onLogin(params);
      return Right(dataState);
    }on FirebaseAuthException catch(e){
      return Left(Failure.firebase(e));
    }
  }

  @override
  Future<Either<Failure, ProfileInformation?>> checkAccountInformation(String userId)async {
    try{
      final dataState = await authenticationDatasource.checkAccountInformation(userId);
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }

  @override
  Future<Either<Failure, bool>> onUpdateProfile(ProfileInformation profile)async {
    try{
      final dataState = await authenticationDatasource.onUpdateProfile(profile);
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }
}

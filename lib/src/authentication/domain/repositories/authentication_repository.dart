import 'package:clinica_de_alternativo/src/authentication/core/params.dart';
import 'package:clinica_de_alternativo/src/authentication/data/model/profile_information.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failure.dart';
import '../../data/datasources/datasource.dart';

abstract class AuthenticationRepository{
  final AuthenticationDatasource authenticationDatasource;
  AuthenticationRepository({required this.authenticationDatasource});

  Future<Either<Failure, bool>> doLogin(LoginParams params);
  Future<Either<Failure, ProfileInformation?>> checkAccountInformation(String userId);
  Future<Either<Failure, bool>> onUpdateProfile(ProfileInformation profile);
}
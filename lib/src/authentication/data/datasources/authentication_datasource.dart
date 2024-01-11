part of 'datasource.dart';

abstract class AuthenticationDatasource{
  AuthenticationDatasource();

  Future<bool> onLogin(LoginParams params);
}
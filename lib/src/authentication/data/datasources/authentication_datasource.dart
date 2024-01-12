part of 'datasource.dart';

abstract class AuthenticationDatasource{
  AuthenticationDatasource();

  Future<bool> onLogin(LoginParams params);
  Future<ProfileInformation?> checkAccountInformation(String userId);
  Future<bool> onUpdateProfile(ProfileInformation profile);
}
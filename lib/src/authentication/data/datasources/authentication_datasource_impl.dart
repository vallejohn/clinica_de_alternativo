part of 'datasource.dart';

class AuthenticationDatasourceImpl extends  AuthenticationDatasource{
  @override
  Future<bool> onLogin(LoginParams params)async {
    final credentials = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: params.username, password: params.password,
    );

    return credentials.user != null;
  }

  @override
  Future<ProfileInformation?> checkAccountInformation(String userId)async {
     final result = await FirestoreCollection.profileInformation().where('id', isEqualTo: userId).get();

     if(result.docs.isEmpty) return null;

     return ProfileInformation.fromJson(result.docs.first.data());
  }

  @override
  Future<bool> onUpdateProfile(ProfileInformation profile)async {
    await FirestoreCollection.profileInformation().add(profile.toJson());
    return true;
  }
}
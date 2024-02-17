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
     final result = await FirestoreCollection.profileInformation().where('uid', isEqualTo: userId).get();
     if(result.docs.isEmpty) return null;

     Map<String, dynamic> resultMap = result.docs.first.data();
     List<dynamic> attachedModules = [];
     appLogger.w(resultMap['role']['modulesAttached']);
     (resultMap['role']['modulesAttached'] as Map<String, dynamic>).forEach((key, value) {
       attachedModules.add({'code': key, 'name': value});
     });
     resultMap['role']['modulesAttached'] = attachedModules;
     ProfileInformation profile = ProfileInformation.fromJson(resultMap);

     return profile;
  }

  @override
  Future<bool> onUpdateProfile(ProfileInformation profile)async {
    await FirestoreCollection.profileInformation().add(profile.toJson());
    return true;
  }
}
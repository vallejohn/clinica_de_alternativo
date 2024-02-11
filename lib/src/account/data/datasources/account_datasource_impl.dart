part of 'datasource.dart';

class AccountDatasourceImpl extends  AccountDatasource{

  @override
  Future<List<Branch>> getBranchList()async {
    final result = await FirestoreCollection.branch().get();
    return result.docs.map((e) => Branch.fromJson(e.data()).copyWith(id: e.id)).toList();
  }

  @override
  Future<Branch> addBranch(Branch branch)async {
    final result = await FirestoreCollection.branch().add(branch.toJson());
    return branch.copyWith(id: result.id);
  }

  @override
  Future<Role> addRole(Role role)async {
    final modifiedRole = role.copyWith(code: role.name.replaceAll(' ', '_').toLowerCase());
    final result = await FirestoreCollection.roles().add(modifiedRole.toJson());
    return modifiedRole.copyWith(id: result.id);
  }

  @override
  Future<List<Role>> getRoleList()async {
    final result = await FirestoreCollection.roles().get();
    return result.docs.map((e) => Role.fromJson(e.data()).copyWith(id: e.id)).toList();
  }

  @override
  Future<ProfileInformation?> getAccountDetails(String id)async {
    final result = await FirestoreCollection.profileInformation().where('uid', isEqualTo: id).get();

    return ProfileInformation.fromJson(result.docs.first.data());
  }

  @override
  Future<bool> updateAccountDetails(ProfileInformation profile)async {
    final newMapProfile = profile.toJson();

    newMapProfile.remove('branch');
    newMapProfile.remove('role');
    newMapProfile.addAll({'branch' : profile.branch?.toJson()});
    newMapProfile.addAll({'role' : profile.role?.toJson()});

    await FirestoreCollection.profileInformation().doc(profile.id).update(newMapProfile);
    return true;
  }

  @override
  Future<ProfileInformation> addAccount(AddAccountParams params)async {
    final newMapProfile = params.profile.toJson();

    newMapProfile.remove('branch');
    newMapProfile.remove('role');
    newMapProfile.addAll({'branch' : params.profile.branch?.toJson()});
    newMapProfile.addAll({'role' : params.profile.role?.toJson()});

    HttpsCallable  callable = FirebaseFunctions.instanceFor(region: 'asia-southeast1').httpsCallable('createUser');
    final result = await callable.call({'email': params.email, 'password': params.password, 'profile': newMapProfile});


    if(result.data['status'] == 'error') {
      appLogger.e(result.data);
      throw FirebaseFunctionsException(message: result.data['message'],code: '');
    }

    appLogger.wtf('Created employee::: ${result.data}');

    return params.profile.copyWith(uid: result.data['uid']);
  }

  @override
  Future<List<ProfileInformation>> geAccountList()async {
    final result = await FirestoreCollection.profileInformation().get();

    return result.docs.map((e) => ProfileInformation.fromJson(e.data()).copyWith(id: e.id)).toList();
  }

  @override
  Future<Module> addModule(Module module)async {
    final modifiedModule = module.copyWith(code: module.name.replaceAll(' ', '_').toLowerCase());
    final result = await FirestoreCollection.modules().add(modifiedModule.toJson());
    return modifiedModule.copyWith(id: result.id);
  }

  @override
  Future<List<Module>> getModuleList()async {
    final result = await FirestoreCollection.modules().get();
    return result.docs.map((e) => Module.fromJson(e.data()).copyWith(id: e.id)).toList();
  }

  @override
  Future<bool> updateRole(Role role)async {
    Map<String, dynamic> newRole = role.toJson();

      List<Map<String, dynamic>> modulesAttached = [];
      for(final modules in role.modulesAttached){
        modulesAttached.add(modules.toJson());
      }
      newRole['modulesAttached'] = modulesAttached;

     await FirestoreCollection.roles().doc(role.id).update(newRole);
     return true;
  }
}
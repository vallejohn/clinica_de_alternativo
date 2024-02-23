part of 'datasource.dart';

class AccountDatasourceImpl extends  AccountDatasource{

  @override
  Future<List<Branch>> getBranchList()async {
    final result = await FirestoreCollection.branch().get();
    return result.docs.map((e) => Branch.fromJson(e.data()).copyWith(id: e.id)).toList();
  }

  @override
  Future<Branch> addBranch(Branch branch)async {
    final branchDocId = '${branch.name.replaceAll(' ', '_').toLowerCase()}_${branch.type!.name.toLowerCase()}';
    await FirestoreCollection.branch().doc(branchDocId).set(branch.toJson());
    return branch.copyWith(id: branchDocId);
  }

  @override
  Future<Role> addRole(Role role)async {
    final modifiedRole = role.copyWith(code: role.name.replaceAll(' ', '_').toLowerCase());

    final reference = FirestoreCollection.roles().doc(modifiedRole.code);
    final doc = await reference.get();
    if(doc.exists) throw DuplicateRecordException();
    if(!doc.exists) await FirestoreCollection.roles().doc(modifiedRole.code).set(modifiedRole.toJson());

    return modifiedRole.copyWith(id: modifiedRole.code);
  }


  @override
  Future<bool> deleteRole(Role role)async {
    await FirestoreCollection.roles().doc(role.id).delete();
    return true;
  }

  @override
  Future<List<Role>> getRoleList()async {
    final result = await FirestoreCollection.roles().get();
    return result.docs.map((e) => Role.fromJson(e.data()).copyWith(id: e.id)).toList();
  }

  @override
  Future<ProfileInformation?> getAccountDetails(String id)async {
    final result = await FirestoreCollection.profileInformation().where('uid', isEqualTo: id).get();
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
  Future<bool> updateAccountDetails(ProfileInformation profile)async {
    final newMapProfile = profile.toJson();

    newMapProfile.remove('branch');
    newMapProfile.remove('role');
    newMapProfile.addAll({'branch' : profile.branch?.toJson()});
    newMapProfile.addAll({'role' : profile.role?.toJson()});

    Map<String, dynamic> modulesAttached = {};
    for(final modules in profile.role!.modulesAttached){
      modulesAttached.addAll({modules.code: modules.name});
    }
    newMapProfile['role']['modulesAttached'] = modulesAttached;

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

    Map<String, dynamic> modulesAttached = {};
    for(final modules in params.profile.role!.modulesAttached){
      modulesAttached.addAll({modules.code: modules.name});
    }
    newMapProfile['role']['modulesAttached'] = modulesAttached;

    HttpsCallable callable = FirebaseFunctions.instanceFor(region: 'asia-southeast1').httpsCallable('createUser');
    final idToken = await FirebaseAuth.instance.currentUser?.getIdToken();
    final result = await callable.call({'idToken': idToken, 'email': params.email, 'password': params.password, 'profile': newMapProfile});

    appLogger.wtf('Created employee::: ${result.data}');

    if(result.data['status'] == 'error') {
      appLogger.e(result.data);
      throw FirebaseFunctionsException(message: result.data['message'],code: result.data['code']);
    }

    return params.profile.copyWith(uid: result.data['uid']);
  }

  @override
  Future<List<ProfileInformation>> geAccountList()async {
    final result = await FirestoreCollection.profileInformation().get();

    return result.docs.map((e){
      Map<String, dynamic> resultMap = e.data();
      List<dynamic> attachedModules = [];
      appLogger.w(resultMap['role']['modulesAttached']);
      (resultMap['role']['modulesAttached'] as Map<String, dynamic>).forEach((key, value) {
        attachedModules.add({'code': key, 'name': value});
      });
      resultMap['role']['modulesAttached'] = attachedModules;
      return ProfileInformation.fromJson(resultMap).copyWith(id: e.id);
    }).toList();
  }

  @override
  Future<Module> addModule(Module module)async {
    final modifiedModule = module.copyWith(code: module.name.replaceAll(' ', '_').toLowerCase());

    final reference = FirestoreCollection.modules().doc(modifiedModule.code);
    final doc = await reference.get();
    if(doc.exists)  throw DuplicateRecordException();
    if(!doc.exists) await FirestoreCollection.modules().doc(modifiedModule.code).set(modifiedModule.toJson());
    return modifiedModule.copyWith(id: modifiedModule.code);
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
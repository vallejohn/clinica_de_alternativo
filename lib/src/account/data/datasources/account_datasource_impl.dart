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
    final credentials = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: params.email, password: params.password);

    final newProfile = params.profile.copyWith(uid: credentials.user?.uid);
    final newMapProfile = newProfile.toJson();

    newMapProfile.remove('branch');
    newMapProfile.remove('role');
    newMapProfile.addAll({'branch' : params.profile.branch?.toJson()});
    newMapProfile.addAll({'role' : params.profile.role?.toJson()});

    await FirestoreCollection.profileInformation().add(newMapProfile);

    return newProfile;
  }

  @override
  Future<List<ProfileInformation>> geAccountList()async {
    final result = await FirestoreCollection.profileInformation().get();

    return result.docs.map((e) => ProfileInformation.fromJson(e.data()).copyWith(id: e.id)).toList();
  }
}
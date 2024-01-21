import 'package:clinica_de_alternativo/src/authentication/data/model/profile_information.dart';
import 'package:equatable/equatable.dart';

import '../data/models/branch.dart';
import '../data/models/role.dart';

class AddAccountParams extends Equatable{
  final ProfileInformation profile;
  final String email;
  final String password;

  const AddAccountParams({required this.profile, required this.email, required this.password});

  @override
  List<Object?> get props => [profile, email, password];

}

class AddEmployeeState extends Equatable{
  final Role? selectedRole;
  final Branch? selectedBranch;
  final bool addingEmployee;

  const AddEmployeeState({this.selectedRole, this.selectedBranch, this.addingEmployee = false});

  AddEmployeeState copyWith({
    Role? selectedRole,
    Branch? selectedBranch,
    bool? addingEmployee,
  }){
    return AddEmployeeState(
      selectedBranch: selectedBranch?? this.selectedBranch,
      selectedRole: selectedRole?? this.selectedRole,
      addingEmployee: addingEmployee?? this.addingEmployee,
    );
  }

  @override
  List<Object?> get props => [selectedRole, selectedBranch, addingEmployee];

}
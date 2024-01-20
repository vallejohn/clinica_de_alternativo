import 'package:clinica_de_alternativo/src/authentication/data/model/profile_information.dart';
import 'package:equatable/equatable.dart';

class AddAccountParams extends Equatable{
  final ProfileInformation profile;
  final String email;
  final String password;

  const AddAccountParams({required this.profile, required this.email, required this.password});

  @override
  List<Object?> get props => [profile, email, password];

}
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clinica_de_alternativo/src/authentication/data/model/profile_information.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_checker_event.dart';
part 'profile_checker_state.dart';
part 'profile_checker_bloc.freezed.dart';

class ProfileCheckerBloc extends Bloc<ProfileCheckerEvent, ProfileCheckerState> {
  ProfileCheckerBloc() : super(const ProfileCheckerState.initial()) {
    on<ProfileCheckerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

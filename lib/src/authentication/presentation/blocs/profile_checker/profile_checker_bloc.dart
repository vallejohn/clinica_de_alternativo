import 'package:clinica_de_alternativo/src/authentication/domain/authentication_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clinica_de_alternativo/src/authentication/data/model/profile_information.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'profile_checker_event.dart';
part 'profile_checker_state.dart';
part 'profile_checker_bloc.freezed.dart';

class ProfileCheckerBloc extends Bloc<ProfileCheckerEvent, ProfileCheckerState> {
  final _onCheckProfileInfoUseCase = GetIt.instance<OnCheckProfileUseCase>();
  final _onUpdateProfileInfoUseCase = GetIt.instance<OnUpdateProfileUseCase>();

  String _userId = '';

  ProfileCheckerBloc() : super(const ProfileCheckerState.initial()) {
    on<_OnCheckCompletion>((event, emit)async {
      emit(const ProfileCheckerState.loading());

      _userId = event.userId;
      final dataOrError = await _onCheckProfileInfoUseCase(event.userId);

      dataOrError.fold((l){
        emit(ProfileCheckerState.failed(l.when(firebase: (error) => error.message!,)));
      }, (profileInfo){
        emit(ProfileCheckerState.success(profileInfo));
      });
    });

    on<_OnUpdateProfile>((event, emit)async {
      emit(const ProfileCheckerState.loading());

      final profile = event.information.copyWith(id: _userId);
      final dataOrError = await _onUpdateProfileInfoUseCase(profile);

      dataOrError.fold((l){
        emit(ProfileCheckerState.failed(l.when(firebase: (error) => error.message!,)));
      }, (_){
        emit(ProfileCheckerState.success(profile));
      });
    });
  }
}

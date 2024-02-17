import 'package:clinica_de_alternativo/core/extensions.dart';
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

  ProfileCheckerBloc() : super(const ProfileCheckerState()) {
    on<_OnCheckCompletion>((event, emit)async {
      emit(state.copyWith(status: ProfileCheckStatus.loading));

      _userId = event.userId;
      final dataOrError = await _onCheckProfileInfoUseCase(event.userId);

      dataOrError.fold((l){
        emit(state.copyWith(message: l.getMessage(), status: ProfileCheckStatus.failed));
      }, (profileInfo){
        emit(state.copyWith(profile: profileInfo, status: ProfileCheckStatus.success));
      });
    });

    on<_OnUpdateProfile>((event, emit)async {
      emit(state.copyWith(status: ProfileCheckStatus.loading));

      final profile = event.information.copyWith(id: _userId);
      final dataOrError = await _onUpdateProfileInfoUseCase(profile);

      dataOrError.fold((l){
        emit(state.copyWith(message: l.getMessage(), status: ProfileCheckStatus.failed));
      }, (_){
        emit(state.copyWith(profile: profile, status: ProfileCheckStatus.success));
      });
    });
  }
}

import 'package:clinica_de_alternativo/src/authentication/core/params.dart';
import 'package:clinica_de_alternativo/src/authentication/domain/authentication_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final _onLoginUseCase = GetIt.instance<OnLoginUseCase>();

  LoginBloc() : super(const LoginState.initial()) {
    on<_OnLogin>((event, emit)async {
      emit(const LoginState.loading());

      final dataOrError = await _onLoginUseCase(event.params);

      dataOrError.fold((l){
        emit(LoginState.failed(l.when(firebase: (error) => error.message!,)));
      }, (products){
        emit(const LoginState.success());
      });
    });
  }
}

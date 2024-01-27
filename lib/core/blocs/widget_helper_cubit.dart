import 'package:flutter_bloc/flutter_bloc.dart';

class WidgetHelperCubit<T> extends Cubit<T> {
  WidgetHelperCubit(T type) : super(type);

  void onUpdateState(T type) => emit(type);
}

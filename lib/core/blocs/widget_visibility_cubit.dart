import 'package:flutter_bloc/flutter_bloc.dart';

class WidgetVisibilityCubit<T> extends Cubit<T> {
  WidgetVisibilityCubit(T type) : super(type);

  void onUpdateState(T type) => emit(type);
}

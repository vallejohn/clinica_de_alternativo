import 'package:flutter_bloc/flutter_bloc.dart';

class HomeNavigatorCubit extends Cubit<int> {
  HomeNavigatorCubit() : super(0);

  void onPageChanged(int index) => emit(index);
}

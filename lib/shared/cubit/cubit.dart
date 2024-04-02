import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sala7ly/shared/cubit/state.dart';

import '../network/local/cache_helper.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  bool isDark = false;

  void changeAppMode() {
    // Invert the current state for local changes
    isDark = !isDark;
    CacheHelper.putBoolean(key: 'isDark', value: isDark).then((value) {});

    // Notify the listeners about the state change
    emit(AppChangeModeState());
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sala7ly/modules/register/cubit/state.dart';

class RegisterCubit extends Cubit<RegisterState>
    implements StateStreamable<RegisterState> {
  RegisterCubit() : super(RegisterInitiat());
  static RegisterCubit get(context) => BlocProvider.of(context);

  IconData passwordSuffix = Icons.visibility_outlined;
  IconData confirmPasswordSuffix = Icons.visibility_outlined;
  bool isPasswordVisible = true;
  bool isConfirmPasswordVisible = true;

  void changePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    passwordSuffix = isPasswordVisible
        ? Icons.visibility_outlined
        : Icons.visibility_off_outlined;

    emit(ChangePassVisibility());
  }

  void changeConfirmPasswordVisibility() {
    isConfirmPasswordVisible = !isConfirmPasswordVisible;
    confirmPasswordSuffix = isConfirmPasswordVisible
        ? Icons.visibility_outlined
        : Icons.visibility_off_outlined;
    emit(ChangecPassVisibility());
  }
}

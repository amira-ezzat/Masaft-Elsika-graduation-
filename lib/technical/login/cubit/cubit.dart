import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sala7ly/modules/login/cubit/state.dart';

class LoginCubit extends Cubit<LoginState>
    implements StateStreamable<LoginState>{
  LoginCubit() : super(LoaginInitiat());
  static  LoginCubit get(context)=>BlocProvider.of(context);

  IconData suffix=Icons.visibility_outlined;
  bool isPassword=true;
  void changePasswordVsibility()
  {
    isPassword=!isPassword;
    suffix=isPassword? Icons.visibility_outlined:Icons.visibility_off_outlined;
    emit(ChangePasswordVisibility());
  }

}
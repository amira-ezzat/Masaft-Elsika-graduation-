import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sala7ly/modules/login/cubit/state.dart';
import 'package:sala7ly/modules/login/login.dart';
import 'package:sala7ly/modules/register/cubit/state.dart';
import 'package:sala7ly/modules/register/register.dart';
import 'package:sala7ly/shared/componants/navegate.dart';
import 'package:sala7ly/shared/componants/textFormField.dart';
import 'package:sala7ly/technical/login/login.dart';
import '../../shared/cubit/cubit.dart';
import 'cubit/cubit.dart';


class RegisterT extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var firstController = TextEditingController();
  var lastController = TextEditingController();
  var numberController = TextEditingController();
  var confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>RegisterCubit(),
      child: BlocConsumer<RegisterCubit,RegisterState>(
        listener: (BuildContext context, RegisterState state) {  },
        builder: (BuildContext context, RegisterState state) {
          return Scaffold(
            appBar: AppBar(),
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Text('Sign up'.tr(),
                          style: TextStyle(
                              fontFamily: 'font1',
                              fontSize: 30.0,
                              color: HexColor('#F0630B')
                          ),),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          controller: firstController,
                          keyboardType: TextInputType.text,
                          validator: (value){
                            if(value!.isEmpty)
                            {
                              return 'Please Enter Your Name'.tr();
                            }

                          },
                          decoration: InputDecoration(
                            labelText: 'First Name'.tr(),
                            labelStyle: TextStyle(
                                fontFamily: 'font4'
                                ,color: Colors.grey.shade400
                                ,fontSize: 16
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey, width: 1.0),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey, width: 1.0),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                          ),

                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                        TextFormField(
                          controller: lastController,
                          keyboardType: TextInputType.text,
                          validator: (value){
                            if(value!.isEmpty)
                            {
                              return 'Please Enter Your Name'.tr();
                            }

                          },
                          decoration: InputDecoration(
                            labelText: 'Last Name'.tr(),
                            labelStyle: TextStyle(
                                fontFamily: 'font4'
                                ,color: Colors.grey,
                              fontSize: 16,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey, width: 1.0),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey, width: 1.0),
                              borderRadius: BorderRadius.circular(12.0),

                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                          ),

                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                        defaultTextFormField(
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            validate: (value){
                              if(value!.isEmpty)
                              {
                                return 'Please Enter Your Email Address'.tr();
                              }

                            },
                            label: 'Email Address'.tr(),
                            prefix: Icons.email_outlined
                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                        defaultTextFormField(
                            controller: numberController,
                            type: TextInputType.number,
                            validate: (value){
                              if(value!.isEmpty)
                              {
                                return 'Please Enter Your Phone Number'.tr();
                              }

                            },
                            label: 'Phone Number'.tr(),
                            prefix: Icons.phone
                        ),
                        SizedBox(
                          height: 13.0,
                        ),

                        defaultTextFormField(
                          controller: passwordController,
                          type: TextInputType.visiblePassword,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Your Password'.tr();
                            }
                          },
                          isPassword: RegisterCubit.get(context).isPasswordVisible,
                          suffixPressed: () {
                            RegisterCubit.get(context).changePasswordVisibility();
                          },
                          label: 'Password'.tr(),
                          prefix: Icons.lock_outline,
                          suffix: RegisterCubit.get(context).passwordSuffix,
                        ),
                  SizedBox(
                    height: 13.0,),
                        defaultTextFormField(
                          controller: confirmController,
                          type: TextInputType.visiblePassword,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'Please Confirm Password'.tr();
                            }
                          },
                          isPassword: RegisterCubit.get(context).isConfirmPasswordVisible,
                          suffixPressed: () {
                            RegisterCubit.get(context).changeConfirmPasswordVisibility();
                          },
                          label: 'Confirm Password'.tr(),
                          prefix: Icons.lock_outline,
                          suffix: RegisterCubit.get(context).confirmPasswordSuffix,
                        ),


                        SizedBox(
                          height: 30.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color:AppCubit.get(context).isDark?  HexColor('#F0630B'):HexColor('#D8590A') ,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                          ),
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              if(formKey.currentState!.validate())
                              {

                              }
                            },
                            child: Text(
                              'Sign up'.tr(),
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 130.0,
                              height: 1.0,
                              color: Colors.grey[600],
                            ),
                            Text('  OR  '.tr()),
                            Container(
                              width: 130.0,
                              height: 1.0,
                              color: Colors.grey[600],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('Continue with'.tr(),
                            style:TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Image.asset('assets/images/g.png',
                                height: 20.0,width: 20.0,),

                            ),
                            SizedBox(
                              height: 20,
                            ),
                            IconButton(
                              onPressed: (){},
                              icon:Icon(Icons.facebook,
                                size: 25.0,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            IconButton(
                              onPressed: (){},
                              icon:Icon(Icons.apple,
                                size: 28.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account?'.tr()),
                            TextButton(
                              onPressed: () {
                                navigateAndFinish(context, LoginT());
                              },
                              child: Text(
                                'Sign in'.tr(),
                                style: TextStyle(
                                    color:  HexColor('#F0630B'),
                                    fontFamily: 'font1'
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },

      ),
    );
  }
}

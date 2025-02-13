import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sala7ly/modules/res_pass/otp_screen.dart';
import 'package:sala7ly/shared/componants/navegate.dart';
import 'package:sala7ly/technical/res_pass/otp_screen.dart';
import '../../shared/cubit/cubit.dart';
import 'congrate.dart';

class ResetPageT extends StatelessWidget {
  var formKey = GlobalKey<FormState>();

var restController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Reset Password".tr(),
                  style: TextStyle(
                      color:Color(0xFFF0630B),
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter the mobile number associate with your account and will".tr(),
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey
                  ),
                ),
                Text(
                  "send an 6 digit OTP with instruction to reset your password".tr(),
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 16.0,
                    color: Colors.grey
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text('     Email Or Phone number'.tr()),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: restController,
                  decoration: InputDecoration(

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15)
                  ),
                  validator: (value){
                    if(value!.isEmpty)
                      {
                        return 'You must enter your email or phone'.tr();
                      }
                  },
                ),
                SizedBox(
                  height: 77.0,
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
                      navigateTo(context, OtpScreenT());
                    },
                    child: Text(
                      'Send OTP'.tr(),
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
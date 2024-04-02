import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sala7ly/modules/res_pass/new_password/newPass.dart';
import 'package:sala7ly/shared/componants/navegate.dart';

import '../../shared/cubit/cubit.dart';
import 'new_password/newPass.dart';

class OtpScreenT extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                  image:AssetImage('assets/images/otp.png',),
                width:800,
                height: 220.0,
              ),
              Text(
                'OTP Verification'.tr(),
                style: TextStyle(
                  fontFamily: 'font1',
                  fontSize: 30.0,
                ),
              ),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Text(
                      '          Enter OTP Send to  '.tr(),
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'font2'
                      ),
                    ),
                    Text(
                      '+000 000 000'.tr(),
                      style: TextStyle(
                        fontWeight:FontWeight.w900,
                        fontSize:16.0,
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height:20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70.0,
                    width: 70.0,
                    child: Card(
                      color: HexColor('#F0630B'),
                      child: Text(''),
                      elevation:10.0,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                    ),
                  ),
                  SizedBox(
                width:10.0,
                    ),
                  Container(
                    height: 70.0,
                    width: 70.0,
                    child: Card(
                      color: HexColor('#F0630B'),
                      child: Text(''),
                      elevation:10.0,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                    ),
                  ),
                  SizedBox(
                    width:10.0,
                  ),
                  Container(
                    height: 70.0,
                    width: 70.0,
                    child: Card(
                      color: HexColor('#F0630B'),
                      child: Text(''),
                      elevation:10.0,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                    ),
                  ),
                  SizedBox(
                    width:10.0,
                  ),
                  Container(
                    height: 70.0,
                    width: 70.0,
                    child: Card(
                      color: HexColor('#F0630B'),
                      child: Text(''),
                      elevation:10.0,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                    ),
                  ),
                  SizedBox(
                    width:10.0,
                  ),
                ],
              ),
              SizedBox(
                height:20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t receive the OTP'.tr(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'font2'
                    ),
                  ),
                  Text(
                    'OTP'.tr(),
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: (){},
                      child: Text(
                        'RESEND'.tr(),
                        style: TextStyle(
                          color: HexColor('#F0630B'),
                          fontFamily: 'font1'
                        ),
                      ),
                  ),
                  Text(
                    'OTP',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
                SizedBox(
                height: 50.0,
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
                    navigateTo(context, NewPasswoardT());
                  },
                  child: Text(
                    'Verify'.tr(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color:Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

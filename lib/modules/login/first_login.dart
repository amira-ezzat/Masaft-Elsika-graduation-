import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sala7ly/modules/login/login.dart';
import 'package:sala7ly/technical/login/login.dart';
import '../../shared/componants/navegate.dart';
import '../../shared/cubit/cubit.dart';

class FirstLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 120,),
            Image(
              image:AssetImage('assets/images/aa.png',),
              width:800,
              height: 220.0,
            ),
            SizedBox(height: 20,),
            Text(''),
         //  Spacer(),
           SizedBox(height:66,),
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
                  navigateTo(context, LoginScreen());
                },
                child: Text(
                  'User'.tr(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color:Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
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
                  navigateTo(context, LoginT());
                },
                child: Text(
                  'Technical'.tr(),
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
    );
  }
}

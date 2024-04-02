import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sala7ly/layout/layout_screen.dart';
import 'package:sala7ly/modules/Drawer/edit_profile.dart';
import 'package:sala7ly/modules/setting/ssettingss.dart';
import 'package:sala7ly/shared/componants/navegate.dart';

import 'Drawing.dart';


class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

// ...

class _ProfileScreenState extends State<ProfileScreen> {
  Color editProfileBorderColor = Colors.grey.shade800; // For Edit Profile button
  Color numberBorderColor = Colors.grey.shade800; // For Number button
  Color emailBorderColor = Colors.grey.shade800; // For Email button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);

           navigateTo(context, Layout());
          },
        ),
        title: Text(
          'My Profile'.tr(),
          style: TextStyle(
            color: Color(0xFFF0630B),
            fontSize: 25,
            fontFamily: 'font1',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 200,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Align(
                      alignment: AlignmentDirectional.topCenter,
                      child: Container(
                        height: 160.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image:AssetImage('assets/images/c.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 64.0,
                      backgroundColor: Theme
                          .of(context)
                          .scaffoldBackgroundColor,
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundImage:AssetImage('assets/images/moana.png'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                  'Amira Ezzat'.tr(),
                  style: TextStyle(
                      fontFamily: 'font1',
                      fontSize: 22
                  )
              ),
              SizedBox(
                height: 40,
              ),

              Align(
                alignment: AlignmentDirectional.topStart,
                child: GestureDetector(
                  onTap: () {
                    navigateTo(context, EditeProfile());
                  },
                  onTapDown: (_) {
                    setState(() {
                      editProfileBorderColor = Color(0xFFF0630B); // Change color here
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      editProfileBorderColor = Colors.grey.shade800;
                    });
                  },
                  onTapCancel: () {
                    setState(() {
                      editProfileBorderColor = Colors.grey.shade800;
                    });
                  },
                  child: Container(
                    width: 360,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: editProfileBorderColor, // Use the specific borderColor variable
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset(
                          'assets/image/acc.svg',
                          color: Colors.grey,
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 12.0),
                        Text(
                          'Edit Profile'.tr(),
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                         // color: Colors.grey[700],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Align(
                alignment: AlignmentDirectional.topStart,
                child: GestureDetector(
                  onTap: () {
                    // Handle Number button tap
                  },
                  onTapDown: (_) {
                    setState(() {
                      numberBorderColor = Colors.grey.shade800; // Reset color
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      numberBorderColor = Colors.grey.shade800;
                    });
                  },
                  onTapCancel: () {
                    setState(() {
                      numberBorderColor = Colors.grey.shade800;
                    });
                  },
                  child: Container(
                    width: 360,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: numberBorderColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset(
                          'assets/image/hash.svg',
                          color: Colors.grey,
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 12.0),
                        Text(
                          'Number'.tr(),
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        Spacer(),

                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Align(
                alignment: AlignmentDirectional.topStart,
                child: GestureDetector(
                  onTap: () {
                    // Handle Email button tap
                  },
                  onTapDown: (_) {
                    setState(() {
                      emailBorderColor = Color(0xFFF0630B); // Reset color
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      emailBorderColor = Colors.grey.shade800;
                    });
                  },
                  onTapCancel: () {
                    setState(() {
                      emailBorderColor = Colors.grey.shade800;
                    });
                  },
                  child: Container(
                    width: 360,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: emailBorderColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.email_outlined, color: Colors.grey),
                        SizedBox(width: 12.0),
                        Text(
                          'Email'.tr(),
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        Spacer(),

                      ],
                    ),
                  ),
                ),
              ),

              // ... (rest of the code)
            ],
          ),
        ),
      ),
    );
  }
}

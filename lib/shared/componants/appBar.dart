import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../layout/layout_screen.dart';
import 'navegate.dart';

Widget defualtAppBar({
  required BuildContext context,
  String? title,
 List<Widget>?actions ,

})=> AppBar(
  title: Text(
    title!,
    style: TextStyle(
      color: Color(0xFFF0630B),
      fontSize: 25,
      fontFamily: 'font1',
    ),

  ),
  actions: actions,
  leading: IconButton(
    onPressed: () {
      Navigator.pop(context);
      //navigateTo(context, Layout());
    },
    icon: Icon(Icons.arrow_back_ios),
  ),
);
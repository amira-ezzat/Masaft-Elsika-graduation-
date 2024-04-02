import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../layout/layout_screen.dart';
import '../../shared/componants/navegate.dart';

class Orders extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          icon:Icon(Icons.arrow_back_ios),
          onPressed: () {
            navigateTo(context, Layout());
          },),
        title:Text(
          'Orders'.tr(),
          style: TextStyle(
            color: Color(0xFFF0630B),
            fontSize: 25,
            fontFamily: 'font1',
            // fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}


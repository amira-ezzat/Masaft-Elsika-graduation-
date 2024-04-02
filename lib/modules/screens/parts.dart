import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sala7ly/layout/layout_screen.dart';
import 'package:sala7ly/shared/componants/navegate.dart';

import '../../shared/cubit/cubit.dart';

class Parts extends StatelessWidget {
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pair Parts'.tr(),
          style: TextStyle(
            color: Color(0xFFF0630B),
            fontSize: 25,
            fontFamily: 'font1',
            // fontWeight: FontWeight.bold
          ),
        ),
        leading: IconButton(onPressed: () {
          navigateTo(context, Layout());
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 40.0,
                decoration: BoxDecoration(
                  color: AppCubit.get(context).isDark
                      ? Colors.grey[200]
                      : Colors.grey[700],
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: TextField(
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: '  Search'.tr(),
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(
                        'assets/image/search-24.svg',
                        width: 30,
                        height: 30,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          color: Colors.white70,
                            child: ImageIcon(
                                AssetImage('assets/image/brush.png'),
                              size: 20,
                            ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                            'Paint brush'.tr(),
                          style: TextStyle(
                            color: Colors.black
                          ),
                        ),
                        Text(
                          '50.00 EG'.tr(),
                          style: TextStyle(
                              color: Colors.grey,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          '40.00 EG'.tr(),
                          style: TextStyle(
                              color:Color(0xFFF0630B),
                            fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25,),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          color: Colors.white70,
                          child: ImageIcon(
                            AssetImage('assets/image/ssc.png'),
                            size: 20,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Screwdriver'.tr(),
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                        Text(
                          '50.00 EG'.tr(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          '40.00 EG'.tr(),
                          style: TextStyle(
                              color:Color(0xFFF0630B),
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25,),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          color: Colors.white70,
                          child: ImageIcon(
                            AssetImage('assets/image/color.png'),
                            size: 20,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Paint Colors'.tr(),
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                        Text(
                          '50.00 EG'.tr(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          '40.00 EG'.tr(),
                          style: TextStyle(
                              color:Color(0xFFF0630B),
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          color: Colors.white70,
                          child: ImageIcon(
                            AssetImage('assets/image/tap.png'),
                            size: 18,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Water Tap'.tr(),
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                        Text(
                          '60.00 EG'.tr(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          '35.00 EG'.tr(),
                          style: TextStyle(
                              color:Color(0xFFF0630B),
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25,),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          color: Colors.white70,
                          child: ImageIcon(
                            AssetImage('assets/image/cable.png'),
                            size: 20,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Cable'.tr(),
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                        Text(
                          '50.00 EG'.tr(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          '40.00 EG'.tr(),
                          style: TextStyle(
                              color:Color(0xFFF0630B),
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25,),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          color: Colors.white70,
                          child: ImageIcon(
                            AssetImage('assets/image/pip.png'),
                            size: 20,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Water Pip'.tr(),
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                        Text(
                          '50.00 EG'.tr(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          '40.00 EG'.tr(),
                          style: TextStyle(
                              color:Color(0xFFF0630B),
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          color: Colors.white70,
                          child: ImageIcon(
                            AssetImage('assets/image/pp.png'),
                            size: 18,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Lamb'.tr(),
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                        Text(
                          '60.00 EG'.tr(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          '35.00 EG'.tr(),
                          style: TextStyle(
                              color:Color(0xFFF0630B),
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25,),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          color: Colors.white70,
                          child: ImageIcon(
                            AssetImage('assets/image/drill.png'),
                            size: 20,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Drill'.tr(),
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                        Text(
                          '50.00 EG'.tr(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          '40.00 EG'.tr(),
                          style: TextStyle(
                              color:Color(0xFFF0630B),
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25,),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          color: Colors.white70,
                          child: ImageIcon(
                            AssetImage('assets/image/pliers.png'),
                            size: 20,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Pliers'.tr(),
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                        Text(
                          '50.00 EG'.tr(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          '40.00 EG'.tr(),
                          style: TextStyle(
                              color:Color(0xFFF0630B),
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          color: Colors.white70,
                          child: ImageIcon(
                            AssetImage('assets/image/caliper.png'),
                            size: 18,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Caliper'.tr(),
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                        Text(
                          '60.00 EG'.tr(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          '35.00 EG'.tr(),
                          style: TextStyle(
                              color:Color(0xFFF0630B),
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25,),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          color: Colors.white70,
                          child: ImageIcon(
                            AssetImage('assets/image/saw.png'),
                            size: 20,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Saw'.tr(),
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                        Text(
                          '50.00 EG'.tr(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          '40.00 EG'.tr(),
                          style: TextStyle(
                              color:Color(0xFFF0630B),
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25,),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          color: Colors.white70,
                          child: ImageIcon(
                            AssetImage('assets/image/scrib.png'),
                            size: 20,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Subscriber'.tr(),
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                        Text(
                          '50.00 EG'.tr(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          '40.00 EG'.tr(),
                          style: TextStyle(
                              color:Color(0xFFF0630B),
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: 100,),
            ],
          ),

        ),
      ),
    );
  }


}

import 'package:flutter/material.dart';
import 'package:sala7ly/modules/screens/offer.dart';
import 'package:sala7ly/modules/screens/order.dart';
import 'package:sala7ly/modules/screens/parts.dart';
import 'package:sala7ly/modules/screens/services.dart';
import '../modules/screens/home/home_screen.dart';
import '../shared/cubit/cubit.dart';

class Layout extends StatefulWidget {
  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  final PageController _myPage = PageController(initialPage: 0);
  late int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: _myPage,
        onPageChanged: (int) {
          print('Page Changes to index $int');
          updateSelectedIndex(int);
        },
        children: <Widget>[
          HomeScreen(),
          Services(),
          Orders(),
          Offers(),
          Parts(),
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      floatingActionButton: buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: buildBottomAppBar(),
    );
  }

  Widget buildFloatingActionButton() {
    return CircleAvatar(
      radius: 35,
      backgroundColor:
      AppCubit.get(context).isDark ? Colors.white : Color(0xFF303030),
      child: CircleAvatar(
        radius: 32,
        backgroundColor: Color(0xFFF0630B),
        child: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {},
          child: IconButton(
            iconSize: 30.0,
            icon: Image.asset(
              'assets/images/h.png',
              width: 25,
              height: 25,
              color: selectedIndex == 0 ? Color(0xFFF0630B) : Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _myPage.jumpToPage(0);
                updateSelectedIndex(0);
              });
            },
          ),
        ),
      ),
    );
  }

  Widget buildBottomAppBar() {
    return BottomAppBar(
      elevation: 0.3,
      shape: CircularNotchedRectangle(),
      notchMargin: 6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildTabIconButton(1, 'assets/images/s.png', 38),
          SizedBox(width: 11,),
          buildTabIconButton(2, 'assets/images/or.png', 43),
          SizedBox(width: 33,),
          buildTabIconButton(3, 'assets/images/o.png', 27),
          SizedBox(width: 11,),
          buildTabIconButton(4, 'assets/images/t.png', 30),
        ],
      ),
    );
  }

  Widget buildTabIconButton(int index, String imagePath, double iconSize) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _myPage.jumpToPage(index);
            updateSelectedIndex(index);
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 1),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Image.asset(
                  imagePath,
                  width: iconSize,
                  height: iconSize,
                  color: selectedIndex == index ? Color(0xFFF0630B) : Colors.grey,
                ),
              ),
              SizedBox(height: 12),
              Container(
                height: 2,
                width: 44,
                color: selectedIndex == index ? Color(0xFFF0630B) : Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }


  void updateSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

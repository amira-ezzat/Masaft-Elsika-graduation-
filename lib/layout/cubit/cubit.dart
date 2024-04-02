import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sala7ly/layout/cubit/state.dart';

import '../../modules/screens/home/home_screen.dart';
import '../../modules/screens/offer.dart';
import '../../modules/screens/order.dart';
import '../../modules/screens/parts.dart';
import '../../modules/screens/services.dart';

class sla7lyCubit extends Cubit<sal7lyState> {
  sla7lyCubit() : super(InitialState());

  static sla7lyCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  List<BottomAppBar> bottomItem = [

  ];

  List<Widget> screens = [
    Services(),
    Orders(),
    HomeScreen(),
    Offers(),
    Parts(),
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(BottomNavState());
  }
}

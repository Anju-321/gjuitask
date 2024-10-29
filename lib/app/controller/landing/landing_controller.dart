import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapplication/app/view/more/more.dart';

import '../../view/home/home.dart';
import '../../view/subscriber/subscriber.dart';
import '../../view/trial.dart';

class LandingController extends GetxController {

  final RxInt selectedIndex = 0.obs;

  final List bottomList = [
    "collection",
    "subscribers",
    "report",
    "balance",
    "more"
  ];

  final List<Widget> screens = [
    HomeScreen(),
   SubscriberScreen(),
    TrialScreen(),
    TrialScreen(),
    MoreScreen()
  ];

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
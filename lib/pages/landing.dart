import 'package:flutter/material.dart';
import 'package:myapplication/pages/home.dart';
import 'package:myapplication/pages/tral.dart';

import '../core/appsvg.dart';
import '../core/style.dart';
import '../core/utils.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int _selectedIndex = 0;

 final List _bottomlist = [
    "collection",
    "subscribers",
    "report",
    "balance",
    "more"
  ];
  final List<Widget> _screens = [HomeScreen(),TrialScreen() ,TrialScreen() ,TrialScreen() ,TrialScreen() ]; 

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: _screens[_selectedIndex], 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: List.generate(
          _bottomlist.length,
          (index) => BottomNavigationBarItem(
            icon: AppSvg(name: _bottomlist[index]),
            label: upperfirst(_bottomlist[index]), 
            activeIcon: AppSvg(name: "${_bottomlist[index]}_fill"),
          ),
        ),
          selectedItemColor: primaryClr,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
      ),
    );
  }}
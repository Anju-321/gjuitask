import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/style/style.dart';
import '../../../core/utils/utils.dart';
import '../../controller/landing/landing_controller.dart';
import '../../widgets/appsvg.dart';

class LandingScreen extends StatelessWidget {
  LandingScreen({super.key});

  final  controller = Get.put(LandingController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return    Scaffold(
        body:  controller.screens[controller.selectedIndex.value],
        
        bottomNavigationBar:  BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: controller.onItemTapped,
            items: List.generate(
              controller.bottomList.length,
              (index) => BottomNavigationBarItem(
                icon: AppSvg(name: controller.bottomList[index]),
                label: upperfirst(controller.bottomList[index]),
                activeIcon: AppSvg(
                  name: "${controller.bottomList[index]}_fill",
                ),
              ),
            ),
            selectedItemColor: primaryClr,
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
          ),
        
      );
      }
    
    );
  }
}

// import 'package:flutter/material.dart';

// import '../../../core/style/style.dart';
// import '../../../core/utils/utils.dart';
// import '../../widgets/appsvg.dart';
// import '../home/home.dart';
// import '../trial.dart';

// class LandingScreen extends StatefulWidget {
//   const LandingScreen({super.key});

//   @override
//   _LandingScreenState createState() => _LandingScreenState();
// }

// class _LandingScreenState extends State<LandingScreen> {
//   int _selectedIndex = 0;

//  final List _bottomlist = [
//     "collection",
//     "subscribers",
//     "report",
//     "balance",
//     "more"
//   ];
//   final List<Widget> _screens = [HomeScreen(),TrialScreen() ,TrialScreen() ,TrialScreen() ,TrialScreen() ]; 

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
    
//       body: _screens[_selectedIndex], 
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         items: List.generate(
//           _bottomlist.length,
//           (index) => BottomNavigationBarItem(
//             icon: AppSvg(name: _bottomlist[index]),
//             label: upperfirst(_bottomlist[index]), 
//             activeIcon: AppSvg(name: "${_bottomlist[index]}_fill"),
//           ),
//         ),
//           selectedItemColor: primaryClr,
//         unselectedItemColor: Colors.black,
//         showUnselectedLabels: true,
//       ),
//     );
//   }}
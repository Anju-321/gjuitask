import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/splash/splash_controller.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
      Get.put(SplashController());
 
    return Scaffold(
         backgroundColor:const Color(0XFFA72116),
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 80),
        child: Center(
          child:Image.asset("assets/images/logo.png"),
        ),
      ),
    );
  }
}


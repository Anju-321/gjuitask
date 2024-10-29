import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/view/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '',
      debugShowCheckedModeBanner:false ,
      theme: ThemeData(       
    
        useMaterial3: true,
      ),
      home:  const SplashScreen(),
    );
  }
}



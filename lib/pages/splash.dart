import 'package:flutter/material.dart';
import 'package:myapplication/pages/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor:const Color(0XFFA72116),
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 40),
        child: Center(
          child:Image.asset("assets/images/logo.png"),
        ),
      ),
    );
  }
}


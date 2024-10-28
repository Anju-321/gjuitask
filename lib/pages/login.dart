import 'package:flutter/material.dart';
import 'package:myapplication/pages/home.dart';
import 'package:myapplication/pages/landing.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFA72116),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 80,
              ),
              child: Center(
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16))),
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome!',
                  style: TextStyle(
                    fontFamily: "MontserratMedium",
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Sign in to your account',
                  style: TextStyle(
                    fontFamily: "MontserratMedium",
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 24),
                const TextField(
                  decoration: InputDecoration(
                      labelText: 'Username',
                      filled: true,
                      hintText: 'A0186',
                      border: InputBorder.none,
                      fillColor: Color(0XFFF7F7FB)),
                ),
                const SizedBox(height: 16),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      border: InputBorder.none,
                      fillColor: Color(0XFFF7F7FB)),
                ),
                const SizedBox(height: 12),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontFamily: "MontserratRegular",
                        fontSize: 14,
                        color: Color(0XFF6266F9),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0XFF6266F9)),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        textStyle: const TextStyle(fontSize: 16),
                        elevation: 0,
                        backgroundColor: const Color(0XFFA72116)),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) =>  LandingScreen()),
                      );
                    },
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                        fontFamily: "MontserratMedium",
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

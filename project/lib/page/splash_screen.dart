import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login/page/dashboard_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  static String tag = 'splash-screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splash();
  }

  void splash() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              if (sharedPreferences.getString('email') != null) {
                return DashboardPage ();
              } else {
                return LoginPage();
              }
            })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
          child: SizedBox(
              width: 120, height: 120, child: Image.asset('logo.png')),
        ));
  }
}

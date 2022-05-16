import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:login/page/history.dart';
import 'package:login/page/home_page.dart';
import 'package:login/page/login_page.dart';
import 'package:login/page/profile.dart';

import 'package:shared_preferences/shared_preferences.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);
  static String tag = 'dasboard-page';
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  final screen = [
    HomePage(),
    History(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: GNav(
            backgroundColor: Colors.blue,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.blueGrey,
            gap: 2,
            padding: const EdgeInsets.all(16),
            tabs: [
              GButton(
                onPressed: () {
                  _selectedIndex = 0;
                  setState(() {});
                },
                icon: Icons.home_rounded,
                text: 'Home',
              ),
              GButton(
                onPressed: () {
                  _selectedIndex = 1;
                  setState(() {});
                },
                icon: Icons.note_outlined,
                text: 'History',
              ),
              GButton(
                onPressed: () {
                  _selectedIndex = 2;
                  setState(() {});
                },
                icon: Icons.person_outline,
                text: 'Profile',
              ),
              GButton(
                onPressed: () async {
                  SharedPreferences preferences =
                      await SharedPreferences.getInstance();
                  setState(() {
                    preferences.clear();
                  });
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                },
                icon: Icons.logout_outlined,
                text: 'Logout',
              )
            ],
          ),
        ),
      ),
    );
  }
}

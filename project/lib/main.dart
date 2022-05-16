import 'package:flutter/material.dart';
import 'package:login/page/dashboard_page.dart';
import 'package:login/page/login_page.dart';
import 'package:login/page/splash_screen.dart';
import 'package:login/screen/auth/auth_state.dart';
import 'package:login/screen/cash/cash_state.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => AuthState()),
    ChangeNotifierProvider(create: (_) => CashState())],
    child: MyApp()));

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    DashboardPage.tag: (context) => DashboardPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: SplashScreen(),
      routes: routes,
    );
  }
}

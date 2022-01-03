import 'package:app_delivery_redvital/page/login/login_page.dart';
import 'package:app_delivery_redvital/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: {
          'login': (_) => LoginPage(),
          'home': (_) => HomeScreens(),
        });
  }
}

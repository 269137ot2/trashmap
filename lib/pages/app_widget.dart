import 'package:flutter/material.dart';
import 'package:trashmap/register_page.dart';
import 'login_page.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}

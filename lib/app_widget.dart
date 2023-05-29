import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => AppTheme(),
      },
    );
  }
}
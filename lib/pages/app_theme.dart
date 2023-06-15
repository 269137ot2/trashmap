import 'package:flutter/material.dart';
import 'constants.dart';

class AppTheme extends StatefulWidget {
  @override
  _AppThemeState createState() => _AppThemeState();
}

class _AppThemeState extends State<AppTheme> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tema Escuro'),
      ),
      body: Container(
        color: isDarkMode ? Colors.grey[900] : Colors.white,
        child: Center(
          child: ElevatedButton(
            onPressed: toggleTheme,
            child: Text(isDarkMode ? 'Tema Claro' : 'Tema Escuro'),
          ),
        ),
      ),
    );
  }
}

class ThemeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tema Escuro',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: orange,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: orange,
      ),
    );
  }
}

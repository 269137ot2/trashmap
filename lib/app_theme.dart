import 'package:flutter/material.dart';

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

const MaterialColor orange = const MaterialColor(
  0xFFFF5900,
  const <int, Color>{
    50: const Color(0xFFFF5900),
    100: const Color(0xFFFF5900),
    200: const Color(0xFFFF5900),
    300: const Color(0xFFFF5900),
    400: const Color(0xFFFF5900),
    500: const Color(0xFFFF5900),
    600: const Color(0xFFFF5900),
    700: const Color(0xFFFF5900),
    800: const Color(0xFFFF5900),
    900: const Color(0xFFFF5900),
  },
);

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
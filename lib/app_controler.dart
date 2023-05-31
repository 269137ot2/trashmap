import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();
  bool isDarkMode = false;

  changeTheme() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}

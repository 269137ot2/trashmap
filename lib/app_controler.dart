import 'package:flutter/material.dart';

class AppControler extends ChangeNotifier{
  static AppControler instance = AppControler();
   bool isDarkMode = false;

    changeTheme() {
      isDarkMode = !isDarkMode;
      notifyListeners();
  }
}
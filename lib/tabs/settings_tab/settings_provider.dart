import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier{
  ThemeMode themeMode = ThemeMode.dark;

  String language = 'en';

  bool get isdark => themeMode==ThemeMode.dark;
  String get bgImg => isdark ? "assets/images/dark_bg.png" : "assets/images/bg3.png"; 
  void changeThememode (selectedThememode){
    themeMode = selectedThememode;
    notifyListeners();
  }

  void changeLanguage (selectedLanguage){
    language = selectedLanguage;
    notifyListeners();
  }

}
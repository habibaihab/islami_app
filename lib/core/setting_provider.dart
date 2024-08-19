import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  String currentLanguage ="en";
  ThemeMode currentThemeMode = ThemeMode.dark;

  changeCurrentLanguage(String newLanguage){
    if(currentLanguage == newLanguage) return;
    currentLanguage = newLanguage;
    notifyListeners();
  }
  changeCurrentThemeMode(ThemeMode newThemeMode){
    if(currentThemeMode == newThemeMode) return;
    currentThemeMode = newThemeMode;
    notifyListeners();


  }
  String getBackgroundImage(){
    return currentThemeMode == ThemeMode.dark ?
        "assets/images/home_dark_background.png":
        "assets/images/home_background.png";
  }
  bool isDark(){
    return (currentThemeMode == ThemeMode.dark);
  }
  String getSplashBackground(){
    return currentThemeMode == ThemeMode.dark ?
    "assets/images/dark-splash.png":
    "assets/images/splash_background.png";
  }

}
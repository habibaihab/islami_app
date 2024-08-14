import 'package:flutter/material.dart';
class ApplicationThemeManager{
  static const Color primaryColor = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xFF242424),
      ),
      bodyLarge:TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Color(0xFF242424),
      ) ,
      bodyMedium:TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Color(0xFF242424),
      ) ,
      bodySmall:TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Color(0xFF242424),
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: primaryColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          fontFamily: "ElMessiri",
          fontSize: 30,
          color: Color(0XFF242424),
          fontWeight: FontWeight.bold
      ),
    ),
    useMaterial3: true,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF000000),
      selectedLabelStyle: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 15,
        fontWeight: FontWeight.w800
      ),
      selectedIconTheme: IconThemeData(
        color: Color(0xFF000000),
        size: 30,

      ),
        unselectedLabelStyle: TextStyle(
            fontFamily: "ElMessiri",
            fontSize: 13,
            fontWeight: FontWeight.w800
        ),
      unselectedItemColor: Color(0xFFFFFFFF),
      unselectedIconTheme: IconThemeData(
        color: Color(0xFFFFFFFF),
        size: 28,
      )

    ),


  );
}
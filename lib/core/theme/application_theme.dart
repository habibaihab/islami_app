import 'package:flutter/material.dart';
class ApplicationThemeManager{
  static const Color primaryColor = Color(0xFFB7935F);
  static const Color pimaryDarkColor =Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 33,
        fontWeight: FontWeight.bold,
        color: Color(0xFF242424),
      ),
      bodyLarge:TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 27,
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
  static ThemeData darkTheme = ThemeData(
    primaryColorDark: pimaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 33,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge:TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 27,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ) ,
      bodyMedium:TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ) ,
      bodySmall:TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: pimaryDarkColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          fontFamily: "ElMessiri",
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor:Color(0xFF141A2E),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: pimaryDarkColor,
        selectedLabelStyle: TextStyle(
            fontFamily: "ElMessiri",
            fontSize: 15,
            fontWeight: FontWeight.w800,
          color: pimaryDarkColor,
        ),
        selectedIconTheme: IconThemeData(
          color: pimaryDarkColor,
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
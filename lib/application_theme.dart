import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimaryColor = const Color(0xFFDFECDB);
  static Color darkPrimaryColor = const Color(0xFF141A2E);

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimaryColor,
    colorScheme: ColorScheme.fromSeed(
        seedColor: lightPrimaryColor,
        primary: lightPrimaryColor,
        onPrimary: Color(0xFFffffff),
        secondary: Color(0xff5D9CEC),
        onSecondary: Colors.white),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        // color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Poppins",
            fontSize: 20,
            color: Colors.white)),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins",
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
        fontSize: 22,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
        fontSize: 25,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: Colors.white,
      ),
      displaySmall: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w300,
        fontSize: 14,
        color: Colors.black,
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    scaffoldBackgroundColor: MyThemeData.lightPrimaryColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(
        color: Color(0xff5D9CEC),
        size: 35,
      ),
      unselectedItemColor: Color(0xffC8C9CB),
      unselectedIconTheme: IconThemeData(
        color: Color(0xffC8C9CB),
        size: 30,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
      primaryColor: darkPrimaryColor,
      colorScheme: ColorScheme.fromSeed(
          seedColor: darkPrimaryColor,
          primary: darkPrimaryColor,
          onPrimary: const Color(0xFFffffff),
          secondary: Colors.white,
          onSecondary: Colors.black),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "El Messiri",
              fontSize: 30,
              color: Colors.white)),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: "ElMessiri",
          color: Colors.white,
        ),
        bodyLarge: TextStyle(
          fontFamily: "El Messiri",
          fontWeight: FontWeight.w500,
          fontSize: 25,
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          fontFamily: "El Messiri",
          fontWeight: FontWeight.w400,
          fontSize: 25,
          color: Colors.white,
        ),
        bodySmall: TextStyle(
          fontFamily: "El Messiri",
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF141A2E),
        selectedItemColor: Color(0xffFACC1D),
        selectedIconTheme: IconThemeData(
          size: 35,
          color: Color(0xffFACC1D),
        ),
        selectedLabelStyle: TextStyle(
            color: Colors.white, fontSize: 20, fontFamily: "El Messiri"),
        unselectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ));
}

import 'package:flutter/material.dart';

class AppTheme{
  static const Color lightPrimary = Color(0xffB7935F);
  static const Color darkPrimary = Color(0xff141A2E);
  static const Color black = Color(0xff242424);
  static const Color white = Color(0xffF8F8F8);
  static const Color gold = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30,
        color: black,
        fontWeight: FontWeight.bold
      )
      ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(fontSize: 25,fontWeight: FontWeight.w400, 
      color: black),
      headlineMedium:TextStyle(fontSize: 25,fontWeight: FontWeight.bold, 
      color: white) ,
      titleLarge: TextStyle(fontSize: 20,fontWeight: FontWeight.w400, 
      color: black),
    ),

    bottomNavigationBarTheme: 
    BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
          selectedItemColor: black,
          unselectedItemColor: white,
      backgroundColor:lightPrimary 
      )
  );
  static ThemeData darkTheme = ThemeData();
  
}
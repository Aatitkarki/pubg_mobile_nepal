import 'package:flutter/material.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

ThemeData kLightTheme = ThemeData(
  backgroundColor: Color(0xfffafafa),
  primaryColor: kPrimaryColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  fontFamily: 'BahijSultanNahia',
  textTheme: TextTheme(
      button: TextStyle(fontSize: 16, letterSpacing: 0.5),
      // h1
      headline5: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.normal,
        color: kSecondaryIconColor,
      ),
      // h2
      headline6: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: kSecondaryIconColor,
      ),
      // body med
      bodyText1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      // body norm - med
      bodyText2: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      // body norm - reg
      subtitle1: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      // body small
      subtitle2: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      caption: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      )),
  scaffoldBackgroundColor: kBackgroundColor,
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    isDense: true,
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: kPrimaryColor,
    height: 44,
    textTheme: ButtonTextTheme.primary,
  ),
);

ThemeData kDarkTheme = ThemeData.dark().copyWith(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'BahijSultanNahia'),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    isDense: true,
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.grey[900],
    height: 44,
    textTheme: ButtonTextTheme.primary,
  ),
);

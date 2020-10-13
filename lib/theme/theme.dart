import 'package:flutter/material.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

ThemeData kLightTheme = ThemeData(
  backgroundColor: Color(0xfffafafa),
  primaryColor: kPrimaryColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: TextTheme(
      button: TextStyle(fontSize: 16, letterSpacing: 0.5),
      // h1
      headline5: TextStyle(
        fontSize: 26,
        fontFamily: 'BahijSultanNahia',
        fontWeight: FontWeight.normal,
        color: kPrimaryColor,
      ),
      // h2
      headline6: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      // body med
      bodyText1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: kPrimaryTextColor,
      ),
      // body norm - med
      bodyText2: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: kPrimaryColor,
          fontFamily: 'BahijSultanNahia'),
      // body norm - reg
      subtitle1: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: kPrimaryTextColor,
        fontFamily: 'helveticaneue',
      ),
      // body small
      subtitle2: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      caption: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        fontFamily: 'helveticaneue',
        color: kTextWithBackgroundColor,
      )),
  scaffoldBackgroundColor: kBackgroundColor,
  cursorColor: kPrimaryTextColor,
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: kPrimaryTextColor),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: kPrimaryColor),
      borderRadius: BorderRadius.circular(8),
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

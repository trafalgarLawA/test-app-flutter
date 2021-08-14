import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme (context)=> ThemeData(
  primaryColor: Color(0XFF1312FA),
  accentColor: Colors.cyan[600],
  buttonColor: Color(0XFF1312FA),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary:  Color(0XFF1312FA),
    )
  ),
  textTheme:  GoogleFonts.poppinsTextTheme().copyWith(
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
);


const Color mainColor = Color(0XFF1312FA);
const Color winColor = Color(0XFFE62E6B);
const Color rankColor = Color(0XFF8139FF);


const Map<String,Color>? notificationsColors = {
  'normalNotification' : mainColor,
  'winColor' : winColor,
  'rankColor' :rankColor
};
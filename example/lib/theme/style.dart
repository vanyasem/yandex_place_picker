import 'package:flutter/material.dart';

import 'color.dart' as color;

ThemeData pickerTheme() {
  return ThemeData(
    primaryColor: color.primary,
    accentColor: color.accent,
    scaffoldBackgroundColor: color.background,
    canvasColor: color.background,

    fontFamily: 'Roboto',

    textTheme: TextTheme(
      title: TextStyle(
        fontSize: 20.0,
        letterSpacing: 0.15,
        fontWeight: FontWeight.w500,
      ),
      body1: TextStyle(
        fontSize: 14.0,
        letterSpacing: 0.5,
        color: color.textSecondary,
        fontWeight: FontWeight.w400,
      ),
      body2: TextStyle(
        fontSize: 14.0,
        letterSpacing: 0.25,
        color: color.textPrimary,
        fontWeight: FontWeight.w400,
      ),
      button: TextStyle(
        fontSize: 14.0,
        letterSpacing: 1.25,
        fontWeight: FontWeight.w500,
      )
    ),
  );
}

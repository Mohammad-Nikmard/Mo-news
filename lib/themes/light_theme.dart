import 'package:flutter/material.dart';
import 'package:mo_news/constants/constants.dart';

ThemeData lightTheme = ThemeData(
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontFamily: "SM",
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: LightColors.blackColor,
    ),
    titleMedium: TextStyle(
      fontFamily: "SM",
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: LightColors.blackColor,
    ),
    bodyMedium: TextStyle(
      fontFamily: "SM",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: LightColors.blackColor,
    ),
    bodySmall: TextStyle(
      fontFamily: "SM",
      fontSize: 8,
      fontWeight: FontWeight.w500,
      color: LightColors.greyColor,
    ),
    labelMedium: TextStyle(
      fontFamily: "SM",
      fontSize: 10,
      color: LightColors.redColor,
    ),
    labelSmall: TextStyle(
      fontFamily: "SM",
      fontSize: 10,
      color: LightColors.whiteColor,
    ),
  ),
  colorScheme: const ColorScheme.light(
    background: LightColors.whiteColor,
  ),
  splashColor: Colors.transparent,
);

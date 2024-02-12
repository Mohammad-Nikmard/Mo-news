import 'package:flutter/material.dart';
import 'package:mo_news/constants/constants.dart';

ThemeData darkTheme = ThemeData(
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontFamily: "SM",
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: NightColors.whiteColor,
    ),
    titleMedium: TextStyle(
      fontFamily: "SM",
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: NightColors.whiteColor,
    ),
    bodyMedium: TextStyle(
      fontFamily: "SM",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: NightColors.whiteColor,
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
      color: LightColors.whiteColor,
    ),
    labelSmall: TextStyle(
      fontFamily: "SM",
      fontSize: 10,
      color: LightColors.whiteColor,
    ),
  ),
  colorScheme: const ColorScheme.light(
    background: NightColors.darkBlueColor,
  ),
  splashColor: Colors.transparent,
);

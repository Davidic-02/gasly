import 'package:flutter/material.dart';
import 'package:gasly/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
// Import your color file here

final ThemeData gaslyLightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.lightBg,
  primaryColor: AppColors.primaryColor,

  // AppBar matches the clean white top bar in Figma
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.whiteColor,
    foregroundColor: AppColors.primaryTextColor,
    elevation: 0.5,
  ),

  // Card Theme for the dashboard metrics
  cardTheme: CardThemeData(
    color: AppColors.whiteColor,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: const BorderSide(color: Color(0xFFEAECF0)),
    ),
  ),

  // Button Theme for that "Go to home" orange button
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.whiteColor,
      textStyle: const TextStyle(fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 16),
    ),
  ),

  textTheme: TextTheme(
    headlineSmall: GoogleFonts.inter(
      color: AppColors.primaryTextColor,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: GoogleFonts.inter(color: AppColors.primaryTextColor),
    bodySmall: GoogleFonts.inter(color: AppColors.greyTextColor),
  ),
);

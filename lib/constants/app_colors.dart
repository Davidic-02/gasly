import 'package:flutter/material.dart';

class AppColors {
  // Brand Colors
  static const Color darkSurface = Color(0xFF2C2C2C);
  static const primaryColor = Color(
    0xFFFF6D00,
  ); // The bright orange in "Go to home" / "Deactivate"
  static const sidebarDark = Color(0xFF0D121F); // The deep navy/black sidebar
  static const secondaryBlue = Color(
    0xFF1D2939,
  ); // Hover/Selection color in sidebar

  // Status Colors
  static const successGreen = Color(
    0xFF027A48,
  ); // "Success" badge and "Active" status
  static const successBg = Color(
    0xFFECFDF3,
  ); // Light green background for success badges
  static const errorRed = Color(
    0xFFB42318,
  ); // "Failed" status and "Deactivate" text
  static const errorBg = Color(
    0xFFFEF3F2,
  ); // Light red background for error badges
  static const warningOrange = Color(0xFFB54708); // "Debit" or warning states

  // Chart Colors (from the Donut Chart)
  static const chartBlue = Color(0xFF36A2EB); // Shell
  static const chartGreen = Color(0xFF4BC0C0); // NNPC
  static const chartYellow = Color(0xFFFFCE56); // Oil Up
  static const chartPurple = Color(0xFF9966FF); // Exxon
  static const barChartMain = Color(
    0xFFD1C4E9,
  ); // Light purple bars in dashboard

  // Neutral Colors
  static const whiteColor = Color(0xFFFFFFFF);
  static const lightBg = Color(0xFFF9FAFB); // Main dashboard background
  static const tableHeaderBg = Color(
    0xFF101828,
  ); // The dark table headers (Date, Description)
  static const greyTextColor = Color(0xFF667085); // Subtitles and muted text
  static const primaryTextColor = Color(0xFF101828); // Main bold text
  static const borderColor = Color(0xFFD0D5DD); // Input borders and dividers
}

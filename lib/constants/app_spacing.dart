import 'package:flutter/material.dart';

class AppSpacing {
  const AppSpacing._();

  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  // Vertical Spacing
  static const verticalSpaceSmall = SizedBox(height: 8);
  static const verticalSpaceMedium = SizedBox(height: 16);
  static const verticalSpaceLarge = SizedBox(height: 24);
  static const verticalSpaceHuge = SizedBox(height: 40);

  // Horizontal Spacing
  static const horizontalSpaceSmall = SizedBox(width: 8);
  static const horizontalSpaceMedium = SizedBox(width: 16);
  static const horizontalSpaceLarge = SizedBox(width: 24);

  // Border Radius (Matches your Figma cards)
  static BorderRadius cardRadius = BorderRadius.circular(12);
  static BorderRadius buttonRadius = BorderRadius.circular(8);
}

import 'package:flutter/material.dart';
import 'package:gasly/constants/app_colors.dart';

class GaslyLogo extends StatelessWidget {
  const GaslyLogo();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'GASLY',
        style: TextStyle(
          color: AppColors.primaryTextColor,
          fontSize: 28,
          fontWeight: FontWeight.w900,
          letterSpacing: 4,
        ),
      ),
    );
  }
}

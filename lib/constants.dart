import 'package:flutter/material.dart';

class AppColors {
  static Color primary = const Color(0xFF4169E1);
  static Color primaryDark = const Color(0xFF0D2356);
  static Color background = Colors.white;
  static Color lightBackground = const Color(0xFFE8EEFF);
  static Color border = const Color(0xFFE0E0E0);
  static Color text = Colors.black87;
  static Color textLight = Colors.grey;
}

class AppStyles {
  static TextStyle heading = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  static TextStyle subheading = TextStyle(
    fontSize: 14,
    color: AppColors.primary,
  );

  static TextStyle body = const TextStyle(
    fontSize: 16,
    height: 1.5,
    color: Colors.black87,
  );

  static TextStyle navItem = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );

  static TextStyle navItemSelected = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryDark,
  );
}

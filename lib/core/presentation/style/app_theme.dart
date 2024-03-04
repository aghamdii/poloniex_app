import 'package:flutter/material.dart';
import 'package:poloniex_app/core/presentation/style/app_colors.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.green[50],
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
      selectionColor: AppColors.secondaryColor,
      selectionHandleColor: AppColors.secondaryColor,
    ),
  );
}

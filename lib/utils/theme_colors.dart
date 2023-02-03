import 'package:flutter/material.dart';
import 'package:restuarant_app_ui/utils/app_colors.dart';

class ThemeColors {
  static final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.background,
      secondary: AppColors.secondary,
      onSecondary: AppColors.black,
      background: AppColors.black,
      onBackground: AppColors.background);
}

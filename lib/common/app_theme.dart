import 'package:flutter/material.dart';
import 'package:islami/common/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.brown),
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: AppColors.gold, fontSize: 20, fontWeight: FontWeight.w700),
        iconTheme: IconThemeData(color: AppColors.gold, size: 25)),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.brown),
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: AppBarTheme(
        backgroundColor: AppColors.black,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: AppColors.gold, fontSize: 20, fontWeight: FontWeight.w700),
        iconTheme: IconThemeData(color: AppColors.gold, size: 25)),
  );
}

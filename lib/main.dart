import 'package:flutter/material.dart';
import 'package:islami/common/app_theme.dart';
import 'package:islami/screens/home_screen.dart';
import 'package:islami/screens/intro_screen.dart';
import 'package:islami/screens/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: AppTheme.lightTheme,
    darkTheme: AppTheme.darkTheme,
    themeMode: ThemeMode.dark,
    routes: {
      SplashScreen.routeName: (_) => SplashScreen(),
      IntroScreen.routeName: (_) => IntroScreen(),
      HomeScreen.routeName: (_) => HomeScreen(),
    },
    initialRoute: SplashScreen.routeName,
  ));
}

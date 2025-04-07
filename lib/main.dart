import 'package:flutter/material.dart';
import 'package:islami/screens/intro_screen.dart';
import 'package:islami/screens/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      SplashScreen.routeName:(_)=> SplashScreen(),
      IntroScreen.routeName:(_)=>IntroScreen()
    },
    initialRoute: SplashScreen.routeName,
  ));
}

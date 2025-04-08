import 'dart:async';

import 'package:flutter/material.dart';

import 'intro_screen.dart';

class SplashScreen extends StatefulWidget {
  static final String routeName = '/splash screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () =>
            Navigator.of(context).pushReplacementNamed(IntroScreen.routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      body: Image(
        image: AssetImage(
            'assets/images/images/splash_screen_images/splash_screen_2.png'),
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }
}

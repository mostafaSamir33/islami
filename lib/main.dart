import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/common/app_theme.dart';
import 'package:islami/screens/home_screen.dart';
import 'package:islami/screens/intro_screen.dart';
import 'package:islami/screens/splash_screen.dart';
import 'package:islami/tabs_details/quran_tab/sura_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        IntroScreen.routeName: (_) => IntroScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}

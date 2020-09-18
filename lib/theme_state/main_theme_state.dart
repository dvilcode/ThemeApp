import 'package:flutter/material.dart';
import 'package:theming_app/theme_state/presentation/splash/splash_screen.dart';
import 'package:theming_app/theme_state/presentation/theme.dart';

class MainThemeState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: SplashScreen(),
    );
  }

}
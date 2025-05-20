import 'package:estudae_app/app/presentation/screens/home_screen.dart';
import 'package:estudae_app/app/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: appTheme,
      darkTheme: appThemeDark,
      home: const HomeScreen(),
    );
  }
}

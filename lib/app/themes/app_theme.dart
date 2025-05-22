import 'package:estudae_app/app/themes/alert_extension.dart';
import 'package:flutter/material.dart';

const lightTheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF1379F0),
  onPrimary: Colors.white,
  secondary: Color(0xFF086DE3),
  onSecondary: Colors.white,
  error: Colors.red,
  onError: Colors.white,
  surface: Color.fromARGB(255, 243, 243, 243),
  onSurface: Colors.black,
  primaryContainer: Color.fromARGB(255, 255, 255, 255),
  onPrimaryContainer: Color.fromARGB(255, 255, 255, 255),
  surfaceContainer: Color.fromARGB(255, 255, 255, 255),
  secondaryContainer: Color.fromARGB(59, 209, 209, 209),
  onSecondaryContainer: Color.fromARGB(255, 255, 255, 255),
);

const darkTheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF1379F0),
  onPrimary: Colors.white,
  secondary: Color(0xFF086DE3),
  onSecondary: Colors.white,
  error: Colors.red,
  onError: Colors.white,
  surface: Color.fromARGB(255, 37, 37, 37),
  onSurface: Color.fromARGB(255, 255, 255, 255),
  primaryContainer: Color.fromARGB(255, 56, 56, 56),
  onPrimaryContainer: Color.fromARGB(255, 255, 255, 255),
  surfaceContainer: Color.fromARGB(255, 255, 255, 255),
  secondaryContainer: Color.fromARGB(59, 209, 209, 209),
  onSecondaryContainer: Color.fromARGB(255, 255, 255, 255),
);

ThemeData getLightTheme() {
  return ThemeData(
    colorScheme: lightTheme,
    extensions: [
      AlertColorsExtension.light,
    ],
  );
}

ThemeData getDarkTheme() {
  return ThemeData(
    colorScheme: darkTheme,
    extensions: [
      AlertColorsExtension.light,
    ],
  );
}

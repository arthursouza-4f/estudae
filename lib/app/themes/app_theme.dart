import 'package:estudae_app/app/themes/alert_extension.dart';
import 'package:estudae_app/app/themes/color_base_extension.dart';
import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: Color.fromARGB(255, 209, 209, 209),
  primaryColor: Colors.white,
  extensions: [
    AlertColorsExtension.light,
    ColorBaseExtension.light,
  ],
);

ThemeData appThemeDark = ThemeData(
  scaffoldBackgroundColor: Color(0xFF0F0F12),
  primaryColor: Color(0xFF0A0A0D),
  extensions: [
    AlertColorsExtension.light,
    ColorBaseExtension.light,
  ],
);
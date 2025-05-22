import 'package:estudae_app/app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  late ThemeMode _themeMode = ThemeMode.system;
  
  late ColorScheme _darkScheme = lightTheme;
  late ColorScheme _lightScheme = darkTheme;

  ThemeMode get themeMode => _themeMode;
  
  void setThemeMode(ThemeMode value) {
    _themeMode = value;
    notifyListeners();
  }

  ColorScheme get darkScheme => _darkScheme;
  void setDarkScheme(ColorScheme value) {
    _darkScheme = value;
    notifyListeners();
  }

  ColorScheme get lightScheme => _lightScheme;
  void setLightScheme(ColorScheme value) {
    _lightScheme = value;
    notifyListeners();
  }
}

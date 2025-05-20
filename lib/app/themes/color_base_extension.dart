import 'package:flutter/material.dart';

class ColorBaseExtension extends ThemeExtension<ColorBaseExtension> {
  ColorBaseExtension({
    this.primary,
    this.primaryActive,
    this.primaryTransparent,
    this.backgroundGrey,
  });

  final Color? primary;
  final Color? primaryActive;
  final Color? primaryTransparent;
  final Color? backgroundGrey;

  @override
  ThemeExtension<ColorBaseExtension> copyWith({
    Color? primary,
    Color? primaryActive,
    Color? primaryTransparent,
    Color? backgroundGrey,
  }) {
    return ColorBaseExtension(
      primary: primary ?? this.primary,
      primaryActive: primaryActive ?? this.primaryActive,
      primaryTransparent: primaryTransparent ?? this.primaryTransparent,
      backgroundGrey: backgroundGrey ?? this.backgroundGrey,
    );
  }

  @override
  ThemeExtension<ColorBaseExtension> lerp(
    covariant ThemeExtension<ColorBaseExtension>? other,
    double t,
  ) {
    if (other is! ColorBaseExtension) {
      return this;
    }

    return ColorBaseExtension(
      primary: Color.lerp(primary, other.primary, t),
      primaryActive: Color.lerp(primaryActive, other.primaryActive, t),
      primaryTransparent: Color.lerp(primaryTransparent, other.primaryTransparent, t),
      backgroundGrey: Color.lerp(backgroundGrey, other.backgroundGrey, t),
    );
  }

  static ColorBaseExtension light = ColorBaseExtension(
    primary: const Color(0xFF1379F0),
    primaryActive: const Color(0xFF086DE3),
    primaryTransparent: const Color(0x331379F0),
    backgroundGrey: const Color(0xFFC9CEDA),
  );
}

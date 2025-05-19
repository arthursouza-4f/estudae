import 'package:flutter/material.dart';

class AlertColorsExtension extends ThemeExtension<AlertColorsExtension> {
  AlertColorsExtension({
    this.alertSuccess,
    this.alertSuccessTransparent,
    this.alertInfo,
    this.alertInfoTransparent,
    this.alertWarning,
    this.alertWarningTransparent,
    this.alertDanger,
    this.alertDangerTransparent,
  });

  final Color? alertSuccess;
  final Color? alertSuccessTransparent;
  final Color? alertInfo;
  final Color? alertInfoTransparent;
  final Color? alertWarning;
  final Color? alertWarningTransparent;
  final Color? alertDanger;
  final Color? alertDangerTransparent;

  @override
  ThemeExtension<AlertColorsExtension> copyWith({
    Color? alertSuccess,
    Color? alertSuccessTransparent,
    Color? alertInfo,
    Color? alertInfoTransparent,
    Color? alertWarning,
    Color? alertWarningTransparent,
    Color? alertDanger,
    Color? alertDangerTransparent,
  }) {
    return AlertColorsExtension(
      alertSuccess: alertSuccess ?? this.alertSuccess,
      alertSuccessTransparent: alertSuccessTransparent ?? this.alertSuccessTransparent,
      alertInfo: alertInfo ?? this.alertInfo,
      alertInfoTransparent: alertInfoTransparent ?? this.alertInfoTransparent,
      alertWarning: alertWarning ?? this.alertWarning,
      alertWarningTransparent: alertWarningTransparent ?? this.alertWarningTransparent,
      alertDanger: alertDanger ?? this.alertDanger,
      alertDangerTransparent: alertDangerTransparent ?? this.alertDangerTransparent,
    );
  }

  @override
  ThemeExtension<AlertColorsExtension> lerp(
    covariant ThemeExtension<AlertColorsExtension>? other,
    double t,
  ) {
    if (other is! AlertColorsExtension) {
      return this;
    }

    return AlertColorsExtension(
      alertSuccess: Color.lerp(alertSuccess, other.alertSuccess, t),
      alertSuccessTransparent: Color.lerp(alertSuccessTransparent, other.alertSuccessTransparent, t),
      alertInfo: Color.lerp(alertInfo, other.alertInfo, t),
      alertInfoTransparent: Color.lerp(alertInfoTransparent, other.alertInfoTransparent, t),
      alertWarning: Color.lerp(alertWarning, other.alertWarning, t),
      alertWarningTransparent: Color.lerp(alertWarningTransparent, other.alertWarningTransparent, t),
      alertDanger: Color.lerp(alertDanger, other.alertDanger, t),
      alertDangerTransparent: Color.lerp(alertDangerTransparent, other.alertDangerTransparent, t),
    );
  }

  static AlertColorsExtension light = AlertColorsExtension(
    alertSuccess: const Color(0xFF0BC33F),
    alertSuccessTransparent: const Color(0x330BC33F),
    alertInfo: const Color(0xFF4921EA),
    alertInfoTransparent: const Color(0x334921EA),
    alertWarning: const Color(0xFFFEC524),
    alertWarningTransparent: const Color(0x33FEC524),
    alertDanger: const Color(0xFFED143B),
    alertDangerTransparent: const Color(0x33ED143B),
  );
}

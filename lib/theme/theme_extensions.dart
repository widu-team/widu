import 'package:flutter/material.dart';

// Custom theme extension for additional colors
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.success,
    required this.onSuccess,
    required this.successContainer,
    required this.onSuccessContainer,
    required this.warning,
    required this.onWarning,
    required this.warningContainer,
    required this.onWarningContainer,
    required this.info,
    required this.onInfo,
    required this.infoContainer,
    required this.onInfoContainer,
  });

  final Color success;
  final Color onSuccess;
  final Color successContainer;
  final Color onSuccessContainer;
  final Color warning;
  final Color onWarning;
  final Color warningContainer;
  final Color onWarningContainer;
  final Color info;
  final Color onInfo;
  final Color infoContainer;
  final Color onInfoContainer;

  @override
  CustomColors copyWith({
    Color? success,
    Color? onSuccess,
    Color? successContainer,
    Color? onSuccessContainer,
    Color? warning,
    Color? onWarning,
    Color? warningContainer,
    Color? onWarningContainer,
    Color? info,
    Color? onInfo,
    Color? infoContainer,
    Color? onInfoContainer,
  }) {
    return CustomColors(
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
      successContainer: successContainer ?? this.successContainer,
      onSuccessContainer: onSuccessContainer ?? this.onSuccessContainer,
      warning: warning ?? this.warning,
      onWarning: onWarning ?? this.onWarning,
      warningContainer: warningContainer ?? this.warningContainer,
      onWarningContainer: onWarningContainer ?? this.onWarningContainer,
      info: info ?? this.info,
      onInfo: onInfo ?? this.onInfo,
      infoContainer: infoContainer ?? this.infoContainer,
      onInfoContainer: onInfoContainer ?? this.onInfoContainer,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      success: Color.lerp(success, other.success, t)!,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t)!,
      successContainer:
          Color.lerp(successContainer, other.successContainer, t)!,
      onSuccessContainer:
          Color.lerp(onSuccessContainer, other.onSuccessContainer, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      onWarning: Color.lerp(onWarning, other.onWarning, t)!,
      warningContainer:
          Color.lerp(warningContainer, other.warningContainer, t)!,
      onWarningContainer:
          Color.lerp(onWarningContainer, other.onWarningContainer, t)!,
      info: Color.lerp(info, other.info, t)!,
      onInfo: Color.lerp(onInfo, other.onInfo, t)!,
      infoContainer: Color.lerp(infoContainer, other.infoContainer, t)!,
      onInfoContainer: Color.lerp(onInfoContainer, other.onInfoContainer, t)!,
    );
  }

  // Light theme custom colors
  static const CustomColors light = CustomColors(
    success: Color(0xFF4CAF50),
    onSuccess: Color(0xFFFFFFFF),
    successContainer: Color(0xFFE8F5E8),
    onSuccessContainer: Color(0xFF1B5E20),
    warning: Color(0xFFFF9800),
    onWarning: Color(0xFFFFFFFF),
    warningContainer: Color(0xFFFFF3E0),
    onWarningContainer: Color(0xFFE65100),
    info: Color(0xFF2196F3),
    onInfo: Color(0xFFFFFFFF),
    infoContainer: Color(0xFFE3F2FD),
    onInfoContainer: Color(0xFF0D47A1),
  );

  // Dark theme custom colors
  static const CustomColors dark = CustomColors(
    success: Color(0xFF81C784),
    onSuccess: Color(0xFF1B5E20),
    successContainer: Color(0xFF2E7D32),
    onSuccessContainer: Color(0xFFC8E6C9),
    warning: Color(0xFFFFB74D),
    onWarning: Color(0xFFE65100),
    warningContainer: Color(0xFFFF8F00),
    onWarningContainer: Color(0xFFFFF3E0),
    info: Color(0xFF64B5F6),
    onInfo: Color(0xFF0D47A1),
    infoContainer: Color(0xFF1976D2),
    onInfoContainer: Color(0xFFE3F2FD),
  );
}

// Custom spacing extension
@immutable
class CustomSpacing extends ThemeExtension<CustomSpacing> {
  const CustomSpacing({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.xxl,
  });

  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double xxl;

  @override
  CustomSpacing copyWith({
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return CustomSpacing(
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }

  @override
  CustomSpacing lerp(ThemeExtension<CustomSpacing>? other, double t) {
    if (other is! CustomSpacing) {
      return this;
    }
    return CustomSpacing(
      xs: (xs + (other.xs - xs) * t),
      sm: (sm + (other.sm - sm) * t),
      md: (md + (other.md - md) * t),
      lg: (lg + (other.lg - lg) * t),
      xl: (xl + (other.xl - xl) * t),
      xxl: (xxl + (other.xxl - xxl) * t),
    );
  }

  static const CustomSpacing base = CustomSpacing(
    xs: 4.0,
    sm: 8.0,
    md: 16.0,
    lg: 24.0,
    xl: 32.0,
    xxl: 48.0,
  );
}

// Extension methods for easy access
extension ThemeExtensions on ThemeData {
  CustomColors get customColors => extension<CustomColors>()!;

  CustomSpacing get spacing => extension<CustomSpacing>()!;
}

extension BuildContextExtensions on BuildContext {
  CustomColors get customColors => Theme.of(this).customColors;

  CustomSpacing get spacing => Theme.of(this).spacing;
}

import 'package:flutter/material.dart';
import 'color_scheme.dart';
import 'text_theme.dart';
import 'component_themes.dart';
import 'theme_extensions.dart';

class AppTheme {
  // Private constructor to prevent instantiation
  AppTheme._();

  // Light Theme
  static ThemeData get lightTheme {
    return ThemeData(
      // Use Material 3
      useMaterial3: true,

      // Color scheme
      colorScheme: AppColorSchemes.lightColorScheme,

      // Typography
      textTheme: AppTextTheme.lightTextTheme,

      // Component themes
      appBarTheme: AppComponentThemes.appBarTheme,
      elevatedButtonTheme: AppComponentThemes.elevatedButtonTheme,
      outlinedButtonTheme: AppComponentThemes.outlinedButtonTheme,
      textButtonTheme: AppComponentThemes.textButtonTheme,
      floatingActionButtonTheme: AppComponentThemes.floatingActionButtonTheme,
      cardTheme: AppComponentThemes.cardTheme,
      inputDecorationTheme: AppComponentThemes.inputDecorationTheme,
      chipTheme: AppComponentThemes.chipTheme,
      dialogTheme: AppComponentThemes.dialogTheme,
      bottomSheetTheme: AppComponentThemes.bottomSheetTheme,
      navigationBarTheme: AppComponentThemes.navigationBarTheme,
      listTileTheme: AppComponentThemes.listTileTheme,
      dividerTheme: AppComponentThemes.dividerTheme,
      switchTheme: AppComponentThemes.switchTheme,
      checkboxTheme: AppComponentThemes.checkboxTheme,
      radioTheme: AppComponentThemes.radioTheme,
      sliderTheme: AppComponentThemes.sliderTheme,
      progressIndicatorTheme: AppComponentThemes.progressIndicatorTheme,

      // Custom theme extensions
      extensions: const [
        CustomColors.light,
        CustomSpacing.base,
      ],

      // Additional properties
      visualDensity: VisualDensity.adaptivePlatformDensity,
      splashFactory: InkRipple.splashFactory,
    );
  }

  // Dark Theme
  static ThemeData get darkTheme {
    return ThemeData(
      // Use Material 3
      useMaterial3: true,

      // Color scheme
      colorScheme: AppColorSchemes.darkColorScheme,

      // Typography
      textTheme: AppTextTheme.darkTextTheme,

      // Component themes
      appBarTheme: AppComponentThemes.appBarTheme,
      elevatedButtonTheme: AppComponentThemes.elevatedButtonTheme,
      outlinedButtonTheme: AppComponentThemes.outlinedButtonTheme,
      textButtonTheme: AppComponentThemes.textButtonTheme,
      floatingActionButtonTheme: AppComponentThemes.floatingActionButtonTheme,
      cardTheme: AppComponentThemes.cardTheme,
      inputDecorationTheme: AppComponentThemes.inputDecorationTheme,
      chipTheme: AppComponentThemes.chipTheme,
      dialogTheme: AppComponentThemes.dialogTheme,
      bottomSheetTheme: AppComponentThemes.bottomSheetTheme,
      navigationBarTheme: AppComponentThemes.navigationBarTheme,
      listTileTheme: AppComponentThemes.listTileTheme,
      dividerTheme: AppComponentThemes.dividerTheme,
      switchTheme: AppComponentThemes.switchTheme,
      checkboxTheme: AppComponentThemes.checkboxTheme,
      radioTheme: AppComponentThemes.radioTheme,
      sliderTheme: AppComponentThemes.sliderTheme,
      progressIndicatorTheme: AppComponentThemes.progressIndicatorTheme,

      // Custom theme extensions
      extensions: const [
        CustomColors.dark,
        CustomSpacing.base,
      ],

      // Additional properties
      visualDensity: VisualDensity.adaptivePlatformDensity,
      splashFactory: InkRipple.splashFactory,
    );
  }

  // Get theme based on brightness
  static ThemeData getTheme(Brightness brightness) {
    return brightness == Brightness.light ? lightTheme : darkTheme;
  }

  // Theme mode helpers
  static const ThemeMode defaultThemeMode = ThemeMode.system;

  static ThemeMode getThemeModeFromString(String? themeMode) {
    switch (themeMode) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
      default:
        return ThemeMode.system;
    }
  }

  static String getStringFromThemeMode(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.light:
        return 'light';
      case ThemeMode.dark:
        return 'dark';
      case ThemeMode.system:
        return 'system';
    }
  }
}

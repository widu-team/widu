import 'package:flutter/material.dart';

class AppComponentThemes {
  // AppBar Theme
  static AppBarTheme get appBarTheme => const AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 1,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: null,
        // Uses colorScheme.onSurface
        surfaceTintColor: null,
        // Uses colorScheme.surfaceTint
        titleTextStyle: null,
        // Uses textTheme.titleLarge
        toolbarTextStyle: null, // Uses textTheme.bodyMedium
      );

  // Elevated Button Theme
  static ElevatedButtonThemeData get elevatedButtonTheme =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 1,
          minimumSize: const Size(64, 48),
          maximumSize: const Size(double.infinity, 48),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      );

  // Outlined Button Theme
  static OutlinedButtonThemeData get outlinedButtonTheme =>
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(64, 48),
          maximumSize: const Size(double.infinity, 48),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          side: const BorderSide(width: 1),
        ),
      );

  // Text Button Theme
  static TextButtonThemeData get textButtonTheme => TextButtonThemeData(
        style: TextButton.styleFrom(
          minimumSize: const Size(64, 48),
          maximumSize: const Size(double.infinity, 48),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      );

  // Floating Action Button Theme
  static FloatingActionButtonThemeData get floatingActionButtonTheme =>
      const FloatingActionButtonThemeData(
        elevation: 6,
        focusElevation: 8,
        hoverElevation: 8,
        highlightElevation: 12,
        shape: CircleBorder(),
      );

  // Card Theme
  static CardTheme get cardTheme => CardTheme(
        elevation: 1,
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      );

  // Input Decoration Theme
  static InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(width: 2),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      );

  // Chip Theme
  static ChipThemeData get chipTheme => ChipThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      );

  // Dialog Theme
  static DialogTheme get dialogTheme => DialogTheme(
        elevation: 24,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        titleTextStyle: null, // Uses textTheme.headlineSmall
        contentTextStyle: null, // Uses textTheme.bodyMedium
      );

  // Bottom Sheet Theme
  static BottomSheetThemeData get bottomSheetTheme =>
      const BottomSheetThemeData(
        elevation: 16,
        modalElevation: 16,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(28),
          ),
        ),
      );

  // Navigation Bar Theme
  static NavigationBarThemeData get navigationBarTheme =>
      NavigationBarThemeData(
        elevation: 3,
        height: 80,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      );

  // List Tile Theme
  static ListTileThemeData get listTileTheme => const ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      );

  // Divider Theme
  static DividerThemeData get dividerTheme => const DividerThemeData(
        thickness: 1,
        space: 1,
      );

  // Switch Theme
  static SwitchThemeData get switchTheme => SwitchThemeData(
        thumbIcon: MaterialStateProperty.resolveWith<Icon?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return const Icon(Icons.check);
            }
            return null;
          },
        ),
      );

  // Checkbox Theme
  static CheckboxThemeData get checkboxTheme => CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      );

  // Radio Theme
  static RadioThemeData get radioTheme => const RadioThemeData();

  // Slider Theme
  static SliderThemeData get sliderTheme => const SliderThemeData(
        showValueIndicator: ShowValueIndicator.onlyForDiscrete,
      );

  // Progress Indicator Theme
  static ProgressIndicatorThemeData get progressIndicatorTheme =>
      const ProgressIndicatorThemeData(
        linearTrackColor: Colors.transparent,
      );
}

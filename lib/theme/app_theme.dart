import 'package:flutter/material.dart';

class AppTheme {
  // Modern Black & White Colors
  static const Color primaryDark = Color(0xFF1F1F1F); // Dark charcoal
  static const Color primaryLight = Color(0xFFFFFFFF); // Pure white
  static const Color secondaryDark = Color(0xFF2D2D2D); // Dark gray
  static const Color secondaryLight = Color(0xFFF5F5F5); // Light gray
  static const Color accentDark = Color(0xFF3D3D3D); // Medium gray
  static const Color accentLight = Color(0xFFEEEEEE); // Very light gray
  static const Color borderColor = Color(0xFFDDDDDD); // Border gray
  static const Color hoverColor = Color(0xFFF0F0F0); // Hover gray

  // Text Colors
  static const Color darkText = Color(0xFF1F1F1F); // Dark text
  static const Color lightText = Color(0xFF757575); // Medium gray text
  static const Color disabledText = Color(0xFFBDBDBD); // Disabled gray

  // Background Colors
  static const Color lightBg = Color(0xFFFAFAFA); // Off white background
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  // Accent Colors (minimal, only for highlights)
  static const Color successColor = Color(0xFF2E7D32); // Dark green
  static const Color errorColor = Color(0xFFC62828); // Dark red
  static const Color warningColor = Color(0xFFF57F17); // Dark orange

  // Gradient Colors
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF1F1F1F), Color(0xFF2D2D2D)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [Color(0xFFFFFFFF), Color(0xFFF5F5F5)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [Color(0xFFF5F5F5), Color(0xFFEEEEEE)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Theme Data
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: primaryDark,
    scaffoldBackgroundColor: lightBg,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: primaryDark,
      foregroundColor: white,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 1,
      color: white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryDark,
        foregroundColor: white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primaryDark),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: darkText,
        side: const BorderSide(color: borderColor, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: borderColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: borderColor, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: primaryDark, width: 2),
      ),
      labelStyle: const TextStyle(color: lightText),
      hintStyle: const TextStyle(color: disabledText),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
    listTileTheme: const ListTileThemeData(
      textColor: darkText,
      iconColor: primaryDark,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return primaryDark;
        }
        return lightText;
      }),
      trackColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return primaryDark.withOpacity(0.3);
        }
        return borderColor;
      }),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: primaryDark,
      inactiveTrackColor: borderColor,
      thumbColor: primaryDark,
      overlayColor: primaryDark.withOpacity(0.2),
    ),
  );
}

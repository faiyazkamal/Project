import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFFF3333);
  static const Color primaryForeground = Color(0xFFFFFFFF);
  static const Color secondary = Color(0xFF1A1A1A);
  static const Color secondaryForeground = Color(0xFFFFFFFF);

  static const Color background = Color(0xFF121212);
  static const Color cardBackground = Color(0xFF1A1A1A);
  static const Color mutedBackground = Color(0xFF2A2A2A);

  static const Color foreground = Color(0xFFE0E0E0);
  static const Color mutedForeground = Color(0xFFA1A1A1);
  static const Color cardForeground = Color(0xFFFFFFFF);

  static const Color error = Colors.blueGrey;
  static const Color accent = Color(0xFFFF3333);
  static const Color inputFillColor = Color(0xFF2A2A2A);
  static const Color inputBorderColor = Color(0xFF424242);
}

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        onPrimary: AppColors.primaryForeground,
        secondary: AppColors.secondary,
        onSecondary: AppColors.secondaryForeground,
        surface: AppColors.cardBackground,
        onSurface: AppColors.cardForeground,
        background: AppColors.background,
        onBackground: AppColors.foreground,
        error: Colors.redAccent,
        onError: Colors.white,
      ),
      fontFamily: 'Quicksand',
      textTheme: _darkTextTheme,
      appBarTheme: _darkAppBarTheme,
      cardTheme: _cardTheme(AppColors.cardBackground),
      inputDecorationTheme: _inputDecorationTheme(
        AppColors.inputFillColor,
        AppColors.inputBorderColor,
      ),
      elevatedButtonTheme: _buttonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      textButtonTheme: _textButtonTheme,
      iconButtonTheme: _iconButtonTheme(AppColors.primaryForeground),
      chipTheme: _chipTheme(AppColors.mutedBackground, AppColors.foreground),
      tabBarTheme: _tabBarTheme(AppColors.primary, AppColors.mutedForeground),
      dividerColor: AppColors.mutedBackground,
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        onPrimary: AppColors.primaryForeground,
        secondary: AppColors.secondary,
        onSecondary: AppColors.secondaryForeground,
        surface: Colors.white,
        onSurface: Colors.black,
        background: Colors.white,
        onBackground: Colors.black,
        error: Colors.redAccent,
        onError: Colors.white,
      ),
      fontFamily: 'Quicksand',
      textTheme: _lightTextTheme,
      appBarTheme: _lightAppBarTheme,
      cardTheme: _cardTheme(Colors.white),
      inputDecorationTheme: _inputDecorationTheme(
        Colors.grey[200]!,
        Colors.black26,
      ),
      elevatedButtonTheme: _buttonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      textButtonTheme: _textButtonTheme,
      iconButtonTheme: _iconButtonTheme(AppColors.primaryForeground),
      chipTheme: _chipTheme(AppColors.mutedBackground, AppColors.foreground),
      tabBarTheme: _tabBarTheme(AppColors.primary, AppColors.mutedForeground),
      dividerColor: AppColors.mutedBackground,
    );
  }

  static TextTheme get _darkTextTheme => TextTheme(
    headlineLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: AppColors.foreground,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.foreground,
    ),
    headlineSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppColors.foreground,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: AppColors.foreground,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.mutedForeground,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.mutedForeground,
    ),
    displaySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.mutedForeground,
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.foreground,
    ),
  ).apply(fontFamily: 'Quicksand');

  static TextTheme get _lightTextTheme => TextTheme(
    headlineLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headlineSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.black54,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.black54,
    ),
    displaySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.black54,
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  ).apply(fontFamily: 'Quicksand');

  static AppBarTheme get _darkAppBarTheme => AppBarTheme(
    backgroundColor: AppColors.background,
    elevation: 0,
    iconTheme: const IconThemeData(color: AppColors.primaryForeground),
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryForeground,
    ),
  );

  static AppBarTheme get _lightAppBarTheme => const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );

  static CardThemeData _cardTheme(Color color) => CardThemeData(
    color: color,
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    margin: const EdgeInsets.symmetric(vertical: 8.0),
  );

  static InputDecorationTheme _inputDecorationTheme(
    Color fillColor,
    Color borderColor,
  ) => InputDecorationTheme(
    filled: true,
    fillColor: fillColor,
    hintStyle: const TextStyle(color: Colors.black54, fontSize: 16),
    labelStyle: const TextStyle(color: Colors.black54, fontSize: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: borderColor),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  );

  static ElevatedButtonThemeData get _buttonTheme => ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.primaryForeground,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    ),
  );

  static OutlinedButtonThemeData get _outlinedButtonTheme =>
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      );

  static TextButtonThemeData get _textButtonTheme => TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.primary,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    ),
  );

  static IconButtonThemeData _iconButtonTheme(Color color) =>
      IconButtonThemeData(style: IconButton.styleFrom(foregroundColor: color));

  static ChipThemeData _chipTheme(Color bgColor, Color fgColor) =>
      ChipThemeData(
        backgroundColor: bgColor,
        labelStyle: TextStyle(fontSize: 12, color: fgColor),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        side: BorderSide.none,
      );

  static TabBarThemeData _tabBarTheme(Color selected, Color unselected) =>
      TabBarThemeData(
        labelColor: selected,
        unselectedLabelColor: unselected,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(color: AppColors.primary, width: 2.0),
        ),
        labelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
      );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///
/// Defines the default Light and Dark themes.
///
class AppTheme {
  AppTheme._();

  static final AppTheme _instance = AppTheme._();

  /// Current [AppTheme] singleton instance
  static AppTheme get instance => _instance;

  ThemeData? _lightTheme;
  ThemeData? _darkTheme;

  ///
  /// Current Light theme definition
  ///
  ThemeData get lightTheme {
    _lightTheme ??= builder(
      colorPalette: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFF006686),
        onPrimary: Color(0xFFFFFFFF),
        primaryContainer: Color(0xFFC0E8FF),
        onPrimaryContainer: Color(0xFF001F2B),
        secondary: Color(0xFF4D616C),
        onSecondary: Color(0xFFFFFFFF),
        secondaryContainer: Color(0xFFD0E6F3),
        onSecondaryContainer: Color(0xFF091E27),
        tertiary: Color(0xFF5E5A7D),
        onTertiary: Color(0xFFFFFFFF),
        tertiaryContainer: Color(0xFFE4DFFF),
        onTertiaryContainer: Color(0xFF1B1736),
        error: Color(0xFFBA1A1A),
        errorContainer: Color(0xFFFFDAD6),
        onError: Color(0xFFFFFFFF),
        onErrorContainer: Color(0xFF410002),
        background: Color(0xFFFBFCFE),
        onBackground: Color(0xFF191C1E),
        surface: Color(0xFFFBFCFE),
        onSurface: Color(0xFF191C1E),
        surfaceVariant: Color(0xFFDCE3E9),
        onSurfaceVariant: Color(0xFF40484C),
        outline: Color(0xFF71787D),
        onInverseSurface: Color(0xFFF0F1F3),
        inverseSurface: Color(0xFF2E3133),
        inversePrimary: Color(0xFF6FD2FF),
        shadow: Color(0xFF000000),
        surfaceTint: Color(0xFF006686),
      ),
      brightness: Brightness.light,
    );
    return _lightTheme!;
  }

  set lightTheme(ThemeData value) {
    _lightTheme = value;
  }

  ///
  /// Current Dark theme definition
  ///
  ThemeData get darkTheme {
    _darkTheme ??= builder(
      colorPalette: const ColorScheme(
        brightness: Brightness.dark,
        primary: Color(0xFF6FD2FF),
        onPrimary: Color(0xFF003547),
        primaryContainer: Color(0xFF004D66),
        onPrimaryContainer: Color(0xFFC0E8FF),
        secondary: Color(0xFFB4CAD6),
        onSecondary: Color(0xFF1F333D),
        secondaryContainer: Color(0xFF364954),
        onSecondaryContainer: Color(0xFFD0E6F3),
        tertiary: Color(0xFFC7C2EA),
        onTertiary: Color(0xFF302D4C),
        tertiaryContainer: Color(0xFF464364),
        onTertiaryContainer: Color(0xFFE4DFFF),
        error: Color(0xFFFFB4AB),
        errorContainer: Color(0xFF93000A),
        onError: Color(0xFF690005),
        onErrorContainer: Color(0xFFFFDAD6),
        background: Color(0xFF191C1E),
        onBackground: Color(0xFFE1E2E5),
        surface: Color(0xFF191C1E),
        onSurface: Color(0xFFE1E2E5),
        surfaceVariant: Color(0xFF40484C),
        onSurfaceVariant: Color(0xFFC0C7CD),
        outline: Color(0xFF8A9297),
        onInverseSurface: Color(0xFF191C1E),
        inverseSurface: Color(0xFFE1E2E5),
        inversePrimary: Color(0xFF006686),
        shadow: Color(0xFF000000),
        surfaceTint: Color(0xFF6FD2FF),
      ),
      brightness: Brightness.dark,
    );

    return _darkTheme!;
  }

  set darkTheme(ThemeData value) {
    _darkTheme = value;
  }

  ///
  /// Builds a theme, based on the provided colors.
  ///
  ThemeData builder({
    required ColorScheme colorPalette,
    required Brightness brightness,
  }) {
    return ThemeData(
      useMaterial3: true,
      primaryColor: colorPalette.primary,
      brightness: brightness,
      scaffoldBackgroundColor: colorPalette.background,
      canvasColor: Colors.transparent,
      textTheme: GoogleFonts.sourceSansProTextTheme(),
      backgroundColor: colorPalette.background,
      colorScheme: colorPalette,
    );
  }
}

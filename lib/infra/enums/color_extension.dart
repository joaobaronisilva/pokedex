import 'package:flutter/material.dart';

///
/// Theme extensions for colors on BuildContext
///
extension ColorThemeExtension on BuildContext {
  /// Returns the [ColorScheme] implementation based on current theme
  /// brightness associated to the current context.
  ColorScheme get colorPalette => Theme.of(this).colorScheme;
}

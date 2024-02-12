import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final flexSchemeProvider = StateProvider<FlexScheme>((ref) {
  return FlexScheme.cyanM3;
});

final themeModeProvider = StateProvider<ThemeMode>((ref) {
  return ThemeMode.light;
});

final appThemeProvider = Provider<AppTheme>((ref) {
  final scheme = ref.watch(flexSchemeProvider);
  return AppTheme(flexScheme: scheme);
});

class AppTheme {
  AppTheme({required this.flexScheme});

  final FlexScheme flexScheme;
  ThemeData get lightTheme => FlexThemeData.light(
        scheme: flexScheme,
      );
  ThemeData get darkTheme => FlexThemeData.dark(
        scheme: flexScheme,
      );
}

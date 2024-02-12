import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/utils/theme/app_theme.dart';

class ThemeModeSwitch extends ConsumerWidget {
  const ThemeModeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () {
          ref.read(themeModeProvider.notifier).state = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
        },
        child: Icon(
          themeMode == ThemeMode.light ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
        ),
      ),
    );
  }
}

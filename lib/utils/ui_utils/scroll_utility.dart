import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shatapp/utils/ui_utils/responsive_layout.dart';

class CustomScrollConfiguration extends StatelessWidget {
  const CustomScrollConfiguration({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          ...PointerDeviceKind.values,
        },
        scrollbars: MediaQuery.of(context).onLayout(defaultValue: false, onDesktop: true),
      ),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/utils/router/showcase_router.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

final snackBarManagerProvider = Provider<SnackBarManager>((ref) {
  return SnackBarManager(key: ref.watch(scaffoldMessangerKeyProvider));
});

class SnackBarManager with UiDimension, UiShape {
  SnackBarManager({required this.key});

  final GlobalKey<ScaffoldMessengerState> key;

  void showMessage(BuildContext context, String message) {
    final state = key.currentState;
    if (state == null) return;
    state.showSnackBar(
      MySnackBar(
        context,
        message: message,
        padding: mediumPadding,
        shape: mediumRoundedShape,
      ),
    );
    return;
  }
}

class MySnackBar extends SnackBar {
  MySnackBar(
    BuildContext context, {
    required String message,
    required EdgeInsets padding,
    required ShapeBorder shape,
    super.key,
  }) : super(
          content: Text(
            message,
            style: context.textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
          elevation: UiDimension.extraSmallSize,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          behavior: SnackBarBehavior.floating,
          margin: padding,
          shape: shape,
        );
}

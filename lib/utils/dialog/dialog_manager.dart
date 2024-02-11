import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/utils/dialog/dialog_component.dart';
import 'package:shatapp/utils/router/showcase_router.dart';

final dialogManagerProvider = Provider<DialogManager>((ref) {
  return DialogManager(navigatorKey: ref.watch(navigatorKeyProvider));
});

class DialogManager {
  DialogManager({required this.navigatorKey});
  final GlobalKey<NavigatorState> navigatorKey;

  Future<T?> showSuccessDialog<T>({
    required String text,
  }) {
    final context = navigatorKey.currentContext;
    if (context == null) return Future.value();
    return showDialog(
      context: context,
      builder: (context) => ShatappBaseDialog(
        title: 'Operazione completata',
        content: text,
      ),
    );
  }

  Future<T?> showWarningDialog<T>({
    required String text,
  }) {
    final context = navigatorKey.currentContext;
    if (context == null) return Future.value();
    return showDialog(
      context: context,
      builder: (context) => ShatappBaseDialog(
        title: 'Attenzione',
        content: text,
      ),
    );
  }
}

mixin DialogManagerProvider {
  DialogManager getDialogManager(WidgetRef ref) => ref.read(dialogManagerProvider);
}

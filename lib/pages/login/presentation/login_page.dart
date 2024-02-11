import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class LoginPage extends ConsumerWidget with UiUtility {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox.square(
              dimension: 250,
              child: Image.asset(
                'assets/images/poo.png',
              ),
            ),
            smallDivider,
            ElevatedButton(
              onPressed: () => ref.authController.loginWithGoogle(),
              child: const Text('Login with Google'),
            ),
          ],
        ),
      ),
    );
  }
}

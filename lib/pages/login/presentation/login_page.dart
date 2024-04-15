import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/pages/login/presentation/shit_for_login_button.dart';
import 'package:shatapp/pages/login/presentation/shit_for_login_text.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> with UiDimension {
  double opacity = 1;
  Alignment alignment = Alignment.bottomCenter;

  void _fadeText() {
    setState(() {
      opacity = 0.0;
    });
    Future.delayed(const Duration(milliseconds: 100), _moveText);
  }

  void _moveText() {
    setState(() {
      alignment = Alignment.center;
    });
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authenticationSessionController);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: mediumPadding,
        child: authState.map(
          logged: (_) => const SizedBox.shrink(),
          autenticating: (_) => const Center(child: CircularProgressIndicator()),
          unknown: (_) => Stack(
            children: [
              Center(
                child: AnimatedOpacity(
                  opacity: opacity,
                  duration: const Duration(milliseconds: 300),
                  child: ShitForLoginText(onFinished: _fadeText),
                ),
              ),
              AnimatedAlign(
                alignment: alignment,
                curve: Curves.easeInOutCubic,
                duration: const Duration(milliseconds: 300),
                child: const ShitForLoginButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/pages/login/presentation/shit_for_login_button.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class LoginPage extends ConsumerWidget with UiUtility {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Center(
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Hold the shit to start shitting',
                  cursor: '',
                  speed: const Duration(milliseconds: 60),
                  textStyle: context.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
              totalRepeatCount: 1,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          const Positioned(
            bottom: UiDimension.largeSize,
            left: 0,
            right: 0,
            child: ShitForLoginButton(),
          ),
        ],
      ),
    );
  }
}

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class ShitForLoginText extends StatelessWidget {
  const ShitForLoginText({
    super.key,
    this.onFinished,
  });

  final VoidCallback? onFinished;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedTextKit(
        pause: Duration.zero,
        onFinished: onFinished,
        animatedTexts: [
          TypewriterAnimatedText(
            'Hold and release the shit',
            cursor: '',
            speed: const Duration(milliseconds: 60),
            textAlign: TextAlign.center,
            textStyle: getBoldStyle(context),
          ),
          TypewriterAnimatedText(
            'to start',
            cursor: '',
            speed: const Duration(milliseconds: 60),
            textAlign: TextAlign.center,
            textStyle: getBoldStyle(context),
          ),
          TypewriterAnimatedText(
            'shitting',
            cursor: '',
            speed: const Duration(milliseconds: 60),
            textAlign: TextAlign.center,
            textStyle: getShittyStyle(context),
          ),
        ],
        totalRepeatCount: 1,
        displayFullTextOnTap: true,
        stopPauseOnTap: true,
      ),
    );
  }

  TextStyle? getBoldStyle(BuildContext context) => context.textTheme.headlineLarge?.copyWith(
        fontWeight: FontWeight.bold,
      );

  TextStyle? getShittyStyle(BuildContext context) => context.textTheme.headlineLarge?.copyWith(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
        letterSpacing: 1.1,
      );
}

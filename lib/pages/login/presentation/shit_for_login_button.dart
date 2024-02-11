import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';

class ShitForLoginButton extends StatefulHookConsumerWidget {
  const ShitForLoginButton({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ShitForLoginButtonState();
}

class _ShitForLoginButtonState extends ConsumerState<ShitForLoginButton> {
  double scale = 1;
  Timer? timer;

  void _decreaseScale() {
    if (scale > 0.1) {
      setState(() {
        scale -= 0.05;
      });
    }
  }

  void _startDecreasing() {
    setState(() {
      timer = Timer.periodic(const Duration(milliseconds: 100), (t) {
        _decreaseScale();
      });
    });
  }

  void _startIncreasing() {
    if (timer != null) {
      timer!.cancel();
    }
    _increaseScale();
  }

  void _increaseScale() {
    if (timer != null) {
      timer!.cancel();
    }
    setState(() {
      scale = 1.0;
    });
    Future.delayed(const Duration(milliseconds: 150), () {
      ref.authController.loginWithGoogle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 250,
      child: AnimatedOpacity(
        opacity: scale,
        duration: const Duration(milliseconds: 100),
        child: AnimatedScale(
          scale: scale,
          duration: const Duration(milliseconds: 100),
          child: Listener(
            behavior: HitTestBehavior.translucent,
            onPointerUp: (event) => _startIncreasing(),
            child: GestureDetector(
              onTapDown: (detail) => _startDecreasing(),
              child: Image.asset(
                'assets/images/poo.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SnakeGameCell extends StatelessWidget {
  const SnakeGameCell({
    this.child,
    super.key,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.blueGrey,
      child: child,
    );
  }
}

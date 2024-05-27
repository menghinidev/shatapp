import 'package:flutter/material.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class GameLobbyContainer extends StatelessWidget with UiUtility, UiShape, UiDimension {
  const GameLobbyContainer({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: mediumRoundedShape,
      elevation: smallElevation,
      child: Padding(
        padding: largePadding,
        child: child,
      ),
    );
  }
}

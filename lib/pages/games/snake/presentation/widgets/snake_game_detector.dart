import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/pages/games/snake/controller/snake_grid_controller.dart';

class SnakeGameDetector extends ConsumerWidget {
  const SnakeGameDetector({
    required this.child,
    required this.gameLobby,
    super.key,
  });

  final Widget child;
  final GameLobby gameLobby;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(snakeGridStateProvider(gameLobby).notifier);
    return FocusScope(
      autofocus: true,
      onKeyEvent: (_, value) {
        if (value is KeyDownEvent) {
          switch (value.logicalKey) {
            case LogicalKeyboardKey.keyW:
              controller.up();
            case LogicalKeyboardKey.keyD:
              controller.right();
            case LogicalKeyboardKey.keyA:
              controller.left();
            case LogicalKeyboardKey.keyS:
              controller.down();
            default:
              break;
          }
        }
        return KeyEventResult.handled;
      },
      child: GestureDetector(
        onVerticalDragUpdate: (details) {
          if (details.delta.dy > 0) {
            controller.down();
          } else {
            controller.up();
          }
        },
        onHorizontalDragUpdate: (details) {
          if (details.delta.dx > 0) {
            controller.right();
          } else {
            controller.left();
          }
        },
        child: child,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/pages/games/snake/controller/snake_grid_controller.dart';
import 'package:shatapp/pages/games/snake/domain/snake_body/snake_body.dart';
import 'package:shatapp/pages/games/snake/domain/snake_fruit/snake_fruit.dart';
import 'package:shatapp/pages/games/snake/presentation/widgets/snake_game_cell.dart';
import 'package:shatapp/pages/games/snake/presentation/widgets/snake_game_detector.dart';
import 'package:shatapp/pages/games/snake/presentation/widgets/snake_game_grid.dart';
import 'package:shatapp/pages/games/snake/utils/snake_game_constants.dart';

class SnakeGameSection extends ConsumerWidget {
  const SnakeGameSection({
    required this.gameLobby,
    super.key,
  });

  final GameLobby gameLobby;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final grid = ref.watch(snakeGridStateProvider(gameLobby));
    final list = List.generate(
      SnakeGameConstants.yGridLenght,
      (index) => List.generate(
        SnakeGameConstants.xGridLenght,
        (index) => const SnakeGameCell(),
      ),
    )
      ..withFruits(grid.fruits)
      ..withSnake(grid.snake);
    return SnakeGameDetector(
      gameLobby: gameLobby,
      child: SnakeGameGrid(
        grid: list.expand((element) => element).toList(),
      ),
    );
  }
}

extension on List<List<SnakeGameCell>> {
  void withFruits(List<SnakeFruit> fruits) {
    for (final fruit in fruits) {
      this[fruit.gridCoordinate.yAxis].replaceRange(
        fruit.gridCoordinate.xAxis,
        fruit.gridCoordinate.xAxis + 1,
        [
          const SnakeGameCell(
            child: Icon(Icons.apple),
          ),
        ],
      );
    }
  }

  void withSnake(List<SnakeBody> snake) {
    for (final body in snake) {
      this[body.gridCoordinate.yAxis].replaceRange(
        body.gridCoordinate.xAxis,
        body.gridCoordinate.xAxis + 1,
        [
          SnakeGameCell(
            child: Icon(body.order == 0 ? Icons.first_page : Icons.pages),
          ),
        ],
      );
    }
  }
}

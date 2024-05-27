import 'dart:async';
import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/pages/games/application/game_lobby_manager.dart';
import 'package:shatapp/pages/games/snake/controller/snake_game_controller.dart';
import 'package:shatapp/pages/games/snake/controller/snake_movement_controller.dart';
import 'package:shatapp/pages/games/snake/domain/grid_cell/grid_cell.dart';
import 'package:shatapp/pages/games/snake/domain/snake_body/snake_body.dart';
import 'package:shatapp/pages/games/snake/domain/snake_fruit/snake_fruit.dart';
import 'package:shatapp/pages/games/snake/domain/snake_game_data/snake_game_data.dart';
import 'package:shatapp/pages/games/snake/utils/snake_game_constants.dart';

final snakeGridStateProvider = StateNotifierProvider.family<SnakeGridController, SnakeGrid, GameLobby>((ref, lobby) {
  final manager = ref.read(gameManagerProvider(lobby.game));
  return SnakeGridController(
    lobbyManager: manager,
    gameLobby: lobby,
  );
});

class SnakeGridController extends StateNotifier<SnakeGrid> with SnakeMovementController {
  SnakeGridController({
    required this.lobbyManager,
    required this.gameLobby,
  }) : super(SnakeGrid(fruits: [], snake: SnakeGameController(gameLobby, lobbyManager).data.snake)) {
    fruitTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
      generateFruit();
    });
    moveTimer = Timer.periodic(const Duration(milliseconds: 300), (timer) {
      nextMove?.call();
      nextMove = null;
    });
  }

  late Timer fruitTimer;
  late Timer moveTimer;
  final GameLobbyManager lobbyManager;
  final GameLobby gameLobby;

  void Function()? nextMove;

  void endGame() => lobbyManager.endGame(gameLobby: state.updateGameLobby(gameLobby));

  void generateFruit() {
    if (state.fruits.length > 2) return;
    GridCell coordinateGenerator() => GridCell(
          xAxis: Random().nextInt(SnakeGameConstants.xGridLenght - 1),
          yAxis: Random().nextInt(SnakeGameConstants.yGridLenght - 1),
        );

    var randomFruitCoordinate = coordinateGenerator();
    final occupiedCells = [
      ...state.fruits.map((e) => e.gridCoordinate),
      ...state.snake.map((e) => e.gridCoordinate),
    ];

    while (occupiedCells.contains(randomFruitCoordinate)) {
      randomFruitCoordinate = coordinateGenerator();
    }

    final newFruits = List.of(state.fruits)..add(SnakeFruit(gridCoordinate: randomFruitCoordinate));
    state = SnakeGrid(fruits: newFruits, snake: state.snake);
  }

  void eatFruit(List<SnakeBody> snake, SnakeFruit snakeFruit) {
    final newSnake = List.of(snake)
      ..add(
        SnakeBody(gridCoordinate: state.snake.last.gridCoordinate, order: snake.length),
      );

    final newFruits =
        state.fruits.where((element) => !element.gridCoordinate.isOverlap(snakeFruit.gridCoordinate)).toList();
    state = SnakeGrid(
      fruits: newFruits,
      snake: newSnake,
    );
  }

  void move(List<SnakeBody> Function(List<SnakeBody>) movement) {
    try {
      final newSnake = movement(List.from(state.snake));
      final fruit =
          state.fruits.where((element) => element.gridCoordinate.isOverlap(newSnake.first.gridCoordinate)).firstOrNull;
      if (fruit != null) {
        eatFruit(newSnake, fruit);
      } else {
        state = SnakeGrid(fruits: state.fruits, snake: newSnake);
      }
    } on SnakeMovementException catch (_) {
      endGame();
    }
  }

  void up() => nextMove = () => move(moveUp);

  void down() => nextMove = () => move(moveDown);

  void left() => nextMove = () => move(moveLeft);

  void right() => nextMove = () => move(moveRight);
}

class SnakeGrid {
  const SnakeGrid({
    required this.fruits,
    required this.snake,
  });

  final List<SnakeBody> snake;
  final List<SnakeFruit> fruits;
}

extension on SnakeGrid {
  GameLobby updateGameLobby(GameLobby lobby) {
    return lobby.copyWith(
      gameData: SnakeGameData(snake: snake).toJson(),
    );
  }
}

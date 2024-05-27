import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/pages/games/application/game_lobby_manager.dart';
import 'package:shatapp/pages/games/snake/domain/grid_cell/grid_cell.dart';
import 'package:shatapp/pages/games/snake/domain/snake_body/snake_body.dart';
import 'package:shatapp/pages/games/snake/domain/snake_game_data/snake_game_data.dart';

class SnakeGameController {
  SnakeGameController(this.gameLobby, this.gameLobbyManager);

  final GameLobby gameLobby;
  final GameLobbyManager gameLobbyManager;

  SnakeGameData get data => gameLobby.gameData.isEmpty
      ? _initSnake
      : SnakeGameData.fromJson(
          gameLobby.gameData,
        );

  SnakeGameData get _initSnake => SnakeGameData(
        snake: List.generate(
          3,
          (index) => SnakeBody(
            gridCoordinate: GridCell(
              xAxis: 3,
              yAxis: 3 + index,
            ),
            order: index,
          ),
        ),
      );

  static Map<String, dynamic> toJsonData(List<SnakeBody> snake) {
    return {'snake': snake.map((e) => e.toJson())};
  }
}

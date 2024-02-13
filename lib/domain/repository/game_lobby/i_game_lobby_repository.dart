import 'package:shatapp/domain/enum/game_lobby_status.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';

abstract class GameLobbyRepository {
  Future<GameLobby> createLobby({
    required GameLobby lobby,
  });

  Future<GameLobby> joinLobby({
    required String id,
    required String userId,
  });

  Future<GameLobby> joinLobbyAsSpectator({
    required String id,
    required String userId,
  });

  Stream<List<GameLobby>> getGameLobbiesByStatus({
    required GameLobbyStatus? status,
  });
}

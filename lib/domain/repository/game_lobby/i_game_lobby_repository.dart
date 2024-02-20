import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/games_enum.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/domain/repository/game_lobby/game_lobby_repository.dart';

final gameLobbyRepositoryProvider = Provider<GameLobbyRepository>((ref) {
  return GameLobbyRepositoryImpl();
});

abstract class GameLobbyRepository {
  Future<GameLobby> createLobby({
    required GameLobby lobby,
  });

  Future<GameLobby> updateLobby({
    required GameLobby lobby,
  });

  Future<void> removeLobby({required String id});

  Future<List<GameLobby>> getLobbies();

  Future<GameLobby> joinLobby({
    required String id,
    required String userId,
  });

  Future<GameLobby> joinLobbyAsSpectator({
    required String id,
    required String userId,
  });

  Future<GameLobby?> getPendingGameLobby({
    required Games game,
  });

  Stream<GameLobby> getLobbyAsStream({
    required String id,
  });
}

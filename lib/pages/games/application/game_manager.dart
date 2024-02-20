import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/game_lobby_status.dart';
import 'package:shatapp/domain/enum/games_enum.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/domain/repository/game_lobby/i_game_lobby_repository.dart';
import 'package:shatapp/pages/games/utils/games_extension.dart';

final gameManagerProvider = Provider.family<GameManager, Games>((ref, arg) {
  final repo = ref.read(gameLobbyRepositoryProvider);
  return GameManager(game: arg, repository: repo);
});

class GameManager {
  GameManager({
    required this.game,
    required this.repository,
  });

  final Games game;
  final GameLobbyRepository repository;

  GameLobby _createGameLobby({required String userId}) {
    return GameLobby(
      players: [userId],
      spectators: [],
      status: GameLobbyStatus.pending,
      maxPlayers: game.getMaxPlayers(),
      minPlayers: game.getMinPlayers(),
      game: game,
    );
  }

  Future<GameLobby> _createNewLobby({
    required String userId,
  }) {
    return repository.createLobby(
      lobby: _createGameLobby(userId: userId),
    );
  }

  Future<GameLobby> joinLobby({
    required String userId,
  }) async {
    final lobby = await repository.getPendingGameLobby(game: game);
    if (lobby == null) {
      return _createNewLobby(userId: userId);
    }
    return repository.joinLobby(id: lobby.id!, userId: userId);
  }
}

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/game_lobby_status.dart';
import 'package:shatapp/domain/enum/games_enum.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
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

  GameLobby _createGameLobby({required ShatAppUser user}) {
    return GameLobby(
      players: [user],
      spectators: [],
      status: GameLobbyStatus.pending,
      maxPlayers: game.getMaxPlayers(),
      minPlayers: game.getMinPlayers(),
      game: game,
    );
  }

  Future<GameLobby> _createNewLobby({
    required ShatAppUser user,
  }) {
    return repository.createLobby(
      lobby: _createGameLobby(user: user),
    );
  }

  Future<GameLobby> joinLobby({
    required ShatAppUser user,
  }) async {
    final lobby = await repository.getPendingGameLobby(game: game);
    if (lobby == null) {
      return _createNewLobby(user: user);
    }
    return repository.joinLobby(id: lobby.id!, user: user);
  }
}

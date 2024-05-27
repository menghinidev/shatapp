import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/game_lobby_status.dart';
import 'package:shatapp/domain/enum/games_enum.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/domain/repository/game_lobby/i_game_lobby_repository.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/domain/session/state/authenticationstate.dart';
import 'package:shatapp/pages/games/utils/games_extension.dart';

final gameManagerProvider = Provider.family<GameLobbyManager, Games>((ref, arg) {
  final repo = ref.read(gameLobbyRepositoryProvider);
  final authenticationState = ref.watch(authenticationSessionController);
  return GameLobbyManager(repository: repo, game: arg, authenticationState: authenticationState);
});

class GameLobbyManager {
  GameLobbyManager({
    required this.game,
    required this.repository,
    required this.authenticationState,
  });

  final Games game;
  final GameLobbyRepository repository;
  final AuthenticationState authenticationState;

  Future<GameLobby?> joinLobby() async {
    if (authenticationState is Logged) {
      final userId = (authenticationState as Logged).user.id;
      var lobby = await repository.getAvailableGameLobby(game: game, userId: userId);
      lobby ??= await repository.createLobby(lobby: game.newLobby);
      return repository.joinLobby(id: lobby.id!, userId: userId);
    }
    return null;
  }

  Future<void> endGame({required GameLobby gameLobby}) async {
    await repository.updateLobby(
      lobby: gameLobby.copyWith(status: GameLobbyStatus.finished),
    );
  }

  Future<void> updateGame({required GameLobby gameLobby}) async {
    await repository.updateLobby(lobby: gameLobby);
  }

  Future<void> leaveLobby({
    required GameLobby lobby,
  }) async {
    if (authenticationState is Logged && lobby.status != GameLobbyStatus.finished) {
      final players = lobby.players.where(
        (element) => element != (authenticationState as Logged).user.id,
      );
      if (players.isEmpty) {
        await repository.removeLobby(id: lobby.id!);
      } else {
        await repository.updateLobby(
          lobby: lobby.copyWith(players: players.toList()),
        );
      }
    }
  }
}

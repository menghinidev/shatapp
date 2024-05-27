import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/game_lobby_status.dart';
import 'package:shatapp/domain/enum/games_enum.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/domain/repository/game_lobby/i_game_lobby_repository.dart';
import 'package:shatapp/pages/games/utils/games_extension.dart';

final gameManagerProvider = Provider.family<GameLobbyManager, Games>((ref, arg) {
  final repo = ref.read(gameLobbyRepositoryProvider);
  return GameLobbyManager(repository: repo, game: arg);
});

class GameLobbyManager {
  GameLobbyManager({
    required this.game,
    required this.repository,
  });

  final Games game;
  final GameLobbyRepository repository;

  Future<GameLobby> joinLobby({
    required String userId,
  }) async {
    var lobby = await repository.getAvailableGameLobby(game: game, userId: userId);
    lobby ??= await repository.createLobby(lobby: game.newLobby);
    return repository.joinLobby(id: lobby.id!, userId: userId);
  }

  Future<void> endGame({required GameLobby gameLobby}) async {
    await repository.updateLobby(
      lobby: gameLobby.copyWith(status: GameLobbyStatus.finished),
    );
  }

  Future<void> updateGame({required GameLobby gameLobby}) async {
    await repository.updateLobby(lobby: gameLobby);
  }

  // Future<void> leaveLobby({
  //   required String userId,
  //   required GameLobby lobby,
  // }) async {
  //   if (lobby.status != GameLobbyStatus.finished) {
  //     final players = lobby.players.where((element) => element != userId);

  //     if (players.isEmpty) {
  //       await repository.removeLobby(id: lobby.id!);
  //     } else {
  //       await repository.updateLobby(
  //         lobby: lobby.copyWith(players: players.toList()),
  //       );
  //     }
  //   }
  // }
}

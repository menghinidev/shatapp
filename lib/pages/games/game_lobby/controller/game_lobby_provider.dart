import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/domain/repository/game_lobby/i_game_lobby_repository.dart';

final gameLobbyStreamProvider = StreamProvider.family<GameLobby, String>(
  (ref, arg) => ref.read(gameLobbyRepositoryProvider).getLobbyAsStream(id: arg),
);

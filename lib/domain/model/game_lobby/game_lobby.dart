import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shatapp/domain/enum/game_lobby_status.dart';

part 'game_lobby.freezed.dart';
part 'game_lobby.g.dart';

@freezed
class GameLobby with _$GameLobby {
  @JsonSerializable(includeIfNull: false)
  factory GameLobby({
    required List<String> players,
    required List<String> spectators,
    required GameLobbyStatus status,
    required int maxPlayers,
    required int minPlayers,
    String? id,
  }) = _GameLobby;

  factory GameLobby.fromJson(Map<String, dynamic> json) => _$GameLobbyFromJson(json);
}

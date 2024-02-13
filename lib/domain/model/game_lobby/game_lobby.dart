import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shatapp/domain/enum/game_lobby_status.dart';
import 'package:shatapp/domain/enum/games_enum.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
import 'package:shatapp/utils/freezed_converter/game_lobby_status_converter.dart';
import 'package:shatapp/utils/freezed_converter/games_converter.dart';
import 'package:shatapp/utils/freezed_converter/shatappuser_converter.dart';

part 'game_lobby.freezed.dart';
part 'game_lobby.g.dart';

@freezed
class GameLobby with _$GameLobby {
  @JsonSerializable(includeIfNull: false)
  factory GameLobby({
    @ShatAppUserConverter() required List<ShatAppUser> players,
    @ShatAppUserConverter() required List<ShatAppUser> spectators,
    @GameLobbyStatusConverter() required GameLobbyStatus status,
    required int maxPlayers,
    required int minPlayers,
    @GamesConverter() required Games game,
    String? id,
  }) = _GameLobby;

  factory GameLobby.fromJson(Map<String, dynamic> json) => _$GameLobbyFromJson(json);
}

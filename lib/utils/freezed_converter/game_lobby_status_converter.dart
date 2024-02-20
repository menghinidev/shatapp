import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shatapp/domain/enum/game_lobby_status.dart';

class GameLobbyStatusConverter implements JsonConverter<GameLobbyStatus, String> {
  const GameLobbyStatusConverter();

  @override
  GameLobbyStatus fromJson(String status) {
    return GameLobbyStatus.values.firstWhere((element) => element.name == status);
  }

  @override
  String toJson(GameLobbyStatus status) => status.name;
}

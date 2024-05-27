// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_lobby.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameLobbyImpl _$$GameLobbyImplFromJson(Map<String, dynamic> json) =>
    _$GameLobbyImpl(
      players:
          (json['players'] as List<dynamic>).map((e) => e as String).toList(),
      spectators: (json['spectators'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      status:
          const GameLobbyStatusConverter().fromJson(json['status'] as String),
      maxPlayers: (json['maxPlayers'] as num).toInt(),
      minPlayers: (json['minPlayers'] as num).toInt(),
      game: const GamesConverter().fromJson(json['game'] as String),
      id: json['id'] as String?,
      gameData: json['gameData'] as Map<String, dynamic>? ??
          const <String, dynamic>{},
    );

Map<String, dynamic> _$$GameLobbyImplToJson(_$GameLobbyImpl instance) {
  final val = <String, dynamic>{
    'players': instance.players,
    'spectators': instance.spectators,
    'status': const GameLobbyStatusConverter().toJson(instance.status),
    'maxPlayers': instance.maxPlayers,
    'minPlayers': instance.minPlayers,
    'game': const GamesConverter().toJson(instance.game),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['gameData'] = instance.gameData;
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_lobby.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameLobbyImpl _$$GameLobbyImplFromJson(Map<String, dynamic> json) =>
    _$GameLobbyImpl(
      players: (json['players'] as List<dynamic>)
          .map((e) =>
              const ShatAppUserConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
      spectators: (json['spectators'] as List<dynamic>)
          .map((e) =>
              const ShatAppUserConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
      status:
          const GameLobbyStatusConverter().fromJson(json['status'] as String),
      maxPlayers: json['maxPlayers'] as int,
      minPlayers: json['minPlayers'] as int,
      game: const GamesConverter().fromJson(json['game'] as String),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$GameLobbyImplToJson(_$GameLobbyImpl instance) {
  final val = <String, dynamic>{
    'players':
        instance.players.map(const ShatAppUserConverter().toJson).toList(),
    'spectators':
        instance.spectators.map(const ShatAppUserConverter().toJson).toList(),
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
  return val;
}

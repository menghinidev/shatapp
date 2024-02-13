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
      status: $enumDecode(_$GameLobbyStatusEnumMap, json['status']),
      maxPlayers: json['maxPlayers'] as int,
      minPlayers: json['minPlayers'] as int,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$GameLobbyImplToJson(_$GameLobbyImpl instance) {
  final val = <String, dynamic>{
    'players': instance.players,
    'spectators': instance.spectators,
    'status': _$GameLobbyStatusEnumMap[instance.status]!,
    'maxPlayers': instance.maxPlayers,
    'minPlayers': instance.minPlayers,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

const _$GameLobbyStatusEnumMap = {
  GameLobbyStatus.pending: 'pending',
  GameLobbyStatus.playing: 'playing',
  GameLobbyStatus.finished: 'finished',
};

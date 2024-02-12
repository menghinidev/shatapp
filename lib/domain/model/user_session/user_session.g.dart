// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentSessionImpl _$$CurrentSessionImplFromJson(Map<String, dynamic> json) =>
    _$CurrentSessionImpl(
      id: json['id'] as String,
      lastOnlineDateTime: const TimestampConverter()
          .fromJson(json['lastOnlineDateTime'] as Timestamp),
      online: json['online'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CurrentSessionImplToJson(
        _$CurrentSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lastOnlineDateTime':
          const TimestampConverter().toJson(instance.lastOnlineDateTime),
      'online': instance.online,
      'runtimeType': instance.$type,
    };

_$InvalidSessionImpl _$$InvalidSessionImplFromJson(Map<String, dynamic> json) =>
    _$InvalidSessionImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InvalidSessionImplToJson(
        _$InvalidSessionImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

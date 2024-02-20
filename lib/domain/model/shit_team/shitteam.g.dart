// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shitteam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShitTeamImpl _$$ShitTeamImplFromJson(Map<String, dynamic> json) =>
    _$ShitTeamImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      creator: json['creator'] as String,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ShitTeamImplToJson(_$ShitTeamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'creator': instance.creator,
      'members': instance.members,
    };

_$ShitTeamDtoImpl _$$ShitTeamDtoImplFromJson(Map<String, dynamic> json) =>
    _$ShitTeamDtoImpl(
      id: json['id'] as String,
      data: ShitTeamDtoData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShitTeamDtoImplToJson(_$ShitTeamDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
    };

_$ShitTeamDtoDataImpl _$$ShitTeamDtoDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ShitTeamDtoDataImpl(
      name: json['name'] as String,
      creator: json['creator'] as String,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ShitTeamDtoDataImplToJson(
        _$ShitTeamDtoDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'creator': instance.creator,
      'members': instance.members,
    };

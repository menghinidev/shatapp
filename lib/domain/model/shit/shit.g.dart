// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShitImpl _$$ShitImplFromJson(Map<String, dynamic> json) => _$ShitImpl(
      id: json['id'] as String,
      creationDateTime: DateTime.parse(json['creationDateTime'] as String),
      effort: $enumDecode(_$ShitEffortEnumMap, json['effort']),
      consistency: $enumDecode(_$ShitConsistencyEnumMap, json['consistency']),
      user: json['user'] == null
          ? null
          : ShatAppUser.fromJson(json['user'] as Map<String, dynamic>),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$ShitImplToJson(_$ShitImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDateTime': instance.creationDateTime.toIso8601String(),
      'effort': _$ShitEffortEnumMap[instance.effort]!,
      'consistency': _$ShitConsistencyEnumMap[instance.consistency]!,
      'user': instance.user,
      'note': instance.note,
    };

const _$ShitEffortEnumMap = {
  ShitEffort.effortless: 'effortless',
  ShitEffort.easy: 'easy',
  ShitEffort.medium: 'medium',
  ShitEffort.hard: 'hard',
  ShitEffort.legendary: 'legendary',
};

const _$ShitConsistencyEnumMap = {
  ShitConsistency.liquid: 'liquid',
  ShitConsistency.sticky: 'sticky',
  ShitConsistency.normal: 'normal',
  ShitConsistency.solid: 'solid',
  ShitConsistency.cement: 'cement',
};

_$ShitDtoImpl _$$ShitDtoImplFromJson(Map<String, dynamic> json) =>
    _$ShitDtoImpl(
      id: json['id'] as String,
      data: ShitDataDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShitDtoImplToJson(_$ShitDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
    };

_$ShitDataDtoImpl _$$ShitDataDtoImplFromJson(Map<String, dynamic> json) =>
    _$ShitDataDtoImpl(
      creationDateTime: DateTime.parse(json['creationDateTime'] as String),
      effort: $enumDecode(_$ShitEffortEnumMap, json['effort']),
      consistency: $enumDecode(_$ShitConsistencyEnumMap, json['consistency']),
      user: json['user'] == null
          ? null
          : ShatAppUser.fromJson(json['user'] as Map<String, dynamic>),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$ShitDataDtoImplToJson(_$ShitDataDtoImpl instance) =>
    <String, dynamic>{
      'creationDateTime': instance.creationDateTime.toIso8601String(),
      'effort': _$ShitEffortEnumMap[instance.effort]!,
      'consistency': _$ShitConsistencyEnumMap[instance.consistency]!,
      'user': instance.user,
      'note': instance.note,
    };

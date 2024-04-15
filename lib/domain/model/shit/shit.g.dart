// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
      reactions: (json['reactions'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry($enumDecode(_$ShitReactionEnumMap, k),
            (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      user: json['user'] as String?,
      note: json['note'] as String?,
      color: json['color'] as String?,
      team: json['team'] as String?,
    );

Map<String, dynamic> _$$ShitDataDtoImplToJson(_$ShitDataDtoImpl instance) {
  final val = <String, dynamic>{
    'creationDateTime': instance.creationDateTime.toIso8601String(),
    'effort': _$ShitEffortEnumMap[instance.effort]!,
    'consistency': _$ShitConsistencyEnumMap[instance.consistency]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'reactions',
      instance.reactions
          ?.map((k, e) => MapEntry(_$ShitReactionEnumMap[k]!, e)));
  writeNotNull('user', instance.user);
  writeNotNull('note', instance.note);
  writeNotNull('color', instance.color);
  writeNotNull('team', instance.team);
  return val;
}

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

const _$ShitReactionEnumMap = {
  ShitReaction.heart: 'heart',
  ShitReaction.respect: 'respect',
};

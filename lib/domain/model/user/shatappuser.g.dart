// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shatappuser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShatAppUserImpl _$$ShatAppUserImplFromJson(Map<String, dynamic> json) =>
    _$ShatAppUserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$ShatAppUserImplToJson(_$ShatAppUserImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('imageUrl', instance.imageUrl);
  return val;
}

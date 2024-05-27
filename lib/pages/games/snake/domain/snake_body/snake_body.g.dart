// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snake_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SnakeBodyImpl _$$SnakeBodyImplFromJson(Map<String, dynamic> json) =>
    _$SnakeBodyImpl(
      gridCoordinate: const GridCellConverter()
          .fromJson(json['gridCoordinate'] as Map<String, dynamic>),
      order: (json['order'] as num).toInt(),
    );

Map<String, dynamic> _$$SnakeBodyImplToJson(_$SnakeBodyImpl instance) =>
    <String, dynamic>{
      'gridCoordinate':
          const GridCellConverter().toJson(instance.gridCoordinate),
      'order': instance.order,
    };

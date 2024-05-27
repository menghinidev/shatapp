// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snake_game_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SnakeGameDataImpl _$$SnakeGameDataImplFromJson(Map<String, dynamic> json) =>
    _$SnakeGameDataImpl(
      snake: (json['snake'] as List<dynamic>)
          .map((e) =>
              const SnakeBodyConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SnakeGameDataImplToJson(_$SnakeGameDataImpl instance) =>
    <String, dynamic>{
      'snake': instance.snake.map(const SnakeBodyConverter().toJson).toList(),
    };

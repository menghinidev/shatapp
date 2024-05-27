import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shatapp/pages/games/snake/domain/snake_body/snake_body.dart';

part 'snake_game_data.freezed.dart';
part 'snake_game_data.g.dart';

@freezed
class SnakeGameData with _$SnakeGameData {
  factory SnakeGameData({
    @SnakeBodyConverter() required List<SnakeBody> snake,
  }) = _SnakeGameData;

  factory SnakeGameData.fromJson(Map<String, dynamic> json) => _$SnakeGameDataFromJson(json);
}

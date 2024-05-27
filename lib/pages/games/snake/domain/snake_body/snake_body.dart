import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shatapp/pages/games/snake/domain/grid_cell/grid_cell.dart';

part 'snake_body.freezed.dart';
part 'snake_body.g.dart';

@freezed
class SnakeBody with _$SnakeBody {
  factory SnakeBody({
    @GridCellConverter() required GridCell gridCoordinate,
    required int order,
  }) = _SnakeBody;

  factory SnakeBody.fromJson(Map<String, dynamic> json) => _$SnakeBodyFromJson(json);
}

class SnakeBodyConverter implements JsonConverter<SnakeBody, Map<String, dynamic>> {
  const SnakeBodyConverter();

  @override
  SnakeBody fromJson(Map<String, dynamic> json) => SnakeBody.fromJson(json);

  @override
  Map<String, dynamic> toJson(SnakeBody data) => data.toJson();
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'grid_cell.freezed.dart';
part 'grid_cell.g.dart';

@immutable
@freezed
class GridCell with _$GridCell {
  factory GridCell({
    required int xAxis,
    required int yAxis,
  }) = _GridCell;

  factory GridCell.fromJson(Map<String, dynamic> json) => _$GridCellFromJson(json);
}

class GridCellConverter implements JsonConverter<GridCell, Map<String, dynamic>> {
  const GridCellConverter();

  @override
  GridCell fromJson(Map<String, dynamic> json) => GridCell.fromJson(json);

  @override
  Map<String, dynamic> toJson(GridCell data) => data.toJson();
}

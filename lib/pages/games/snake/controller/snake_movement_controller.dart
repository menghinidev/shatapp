import 'package:shatapp/pages/games/snake/domain/grid_cell/grid_cell.dart';
import 'package:shatapp/pages/games/snake/domain/snake_body/snake_body.dart';
import 'package:shatapp/pages/games/snake/utils/snake_game_constants.dart';

mixin SnakeMovementController {
  void throwExceptionIfOverlaps(List<SnakeBody> snake) {
    if (snake.length > 1) {
      final coordinates = snake.sublist(1).map((e) => e.gridCoordinate).toList();
      final head = snake.first.gridCoordinate;
      if (coordinates.any(head.isOverlap)) {
        throw SnakeMovementException();
      }
    }
  }

  List<SnakeBody> getRecurrentUpdatedSnake(List<SnakeBody> snake, GridCell newCoordinate) {
    if (snake.isEmpty) {
      return [];
    }
    final body = snake.removeAt(0);
    final coordinate = body.gridCoordinate;
    return [body.copyWith(gridCoordinate: newCoordinate), ...getRecurrentUpdatedSnake(snake, coordinate)];
  }

  List<SnakeBody> _handleMovement(List<SnakeBody> snake, GridCell Function(GridCell) getNewHeadCoordinates) {
    if (snake.isEmpty) return snake;
    final headCoordinates = snake.first.gridCoordinate;
    final newHeadCoordinates = getNewHeadCoordinates(headCoordinates);
    if (snake.length > 1) {
      final bodyCoordinates = snake.elementAt(1).gridCoordinate;
      if (newHeadCoordinates.isOverlap(bodyCoordinates)) return snake;
    }

    final updatedSnake = getRecurrentUpdatedSnake(snake, newHeadCoordinates);
    throwExceptionIfOverlaps(updatedSnake);
    return updatedSnake;
  }

  List<SnakeBody> moveUp(List<SnakeBody> snake) {
    return _handleMovement(
      snake,
      (p0) => p0.copyWith(
        yAxis: p0.yAxis - 1 < 0 ? SnakeGameConstants.yGridLenght - 1 : p0.yAxis - 1,
      ),
    );
  }

  List<SnakeBody> moveLeft(List<SnakeBody> snake) {
    return _handleMovement(
      snake,
      (p0) => p0.copyWith(
        xAxis: p0.xAxis - 1 < 0 ? SnakeGameConstants.xGridLenght - 1 : p0.xAxis - 1,
      ),
    );
  }

  List<SnakeBody> moveRight(List<SnakeBody> snake) {
    return _handleMovement(
      snake,
      (p0) => p0.copyWith(
        xAxis: p0.xAxis + 1 > SnakeGameConstants.xGridLenght - 1 ? 0 : p0.xAxis + 1,
      ),
    );
  }

  List<SnakeBody> moveDown(List<SnakeBody> snake) {
    return _handleMovement(
      snake,
      (p0) => p0.copyWith(
        yAxis: p0.yAxis + 1 > SnakeGameConstants.yGridLenght - 1 ? 0 : p0.yAxis + 1,
      ),
    );
  }
}

class SnakeMovementException implements Exception {}

extension GridCellCollision on GridCell {
  bool isOverlap(GridCell cell) {
    return xAxis == cell.xAxis && yAxis == cell.yAxis;
  }
}

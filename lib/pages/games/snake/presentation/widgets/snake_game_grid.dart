import 'package:flutter/material.dart';
import 'package:shatapp/pages/games/snake/presentation/widgets/snake_game_cell.dart';
import 'package:shatapp/pages/games/snake/utils/snake_game_constants.dart';

class SnakeGameGrid extends StatelessWidget {
  const SnakeGameGrid({
    required this.grid,
    super.key,
  });

  final List<SnakeGameCell> grid;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = MediaQuery.of(context).size;
        return ConstrainedBox(
          constraints: constraints.copyWith(maxWidth: size.width / 2),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: SnakeGameConstants.xGridLenght * SnakeGameConstants.yGridLenght,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: SnakeGameConstants.xGridLenght,
            ),
            itemBuilder: (context, index) {
              return grid[index];
            },
          ),
        );
      },
    );
  }
}

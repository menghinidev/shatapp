import 'package:flutter/material.dart';
import 'package:shatapp/pages/games/game_lobby/presentation/widgets/game_lobby_container.dart';
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
    final size = MediaQuery.of(context).size;
    return Center(
      child: GameLobbyContainer(
        child: SizedBox(
          width: size.height / 2,
          height: size.height / 2,
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
        ),
      ),
    );
  }
}

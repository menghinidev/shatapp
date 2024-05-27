import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/games_enum.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/pages/games/snake/presentation/snake_game_section.dart';
import 'package:shatapp/pages/games/utils/games_extension.dart';

class GameLobbyPlayingSection extends ConsumerWidget {
  const GameLobbyPlayingSection({
    required this.gameLobby,
    super.key,
  });

  final GameLobby gameLobby;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Icon(gameLobby.game.getIcon()),
        const Text('Playing'),
        Text('Max players: ${gameLobby.maxPlayers}'),
        Text('Required players: ${gameLobby.minPlayers}'),
        if (gameLobby.game == Games.snake) SnakeGameSection(gameLobby: gameLobby),
      ],
    );
  }
}

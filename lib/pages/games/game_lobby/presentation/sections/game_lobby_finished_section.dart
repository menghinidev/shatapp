import 'package:flutter/material.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/pages/games/utils/games_extension.dart';

class GameLobbyFinishedSection extends StatelessWidget {
  const GameLobbyFinishedSection({
    required this.gameLobby,
    super.key,
  });

  final GameLobby gameLobby;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(gameLobby.game.getIcon()),
        const Text('Finished'),
        Text('Max players: ${gameLobby.maxPlayers}'),
        Text('Required players: ${gameLobby.minPlayers}'),
      ],
    );
  }
}

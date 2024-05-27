import 'package:flutter/material.dart';
import 'package:shatapp/domain/enum/game_lobby_status.dart';
import 'package:shatapp/domain/enum/games_enum.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';

extension GamesUIUtils on Games {
  IconData getIcon() => Icons.games_outlined;
}

extension GameManagerUtils on Games {
  int get minPlayers {
    switch (this) {
      case Games.tris:
        return 2;
      case Games.snake:
        return 1;
    }
  }

  int get maxPlayers {
    switch (this) {
      case Games.tris:
        return 2;
      case Games.snake:
        return 1;
    }
  }

  GameLobby get newLobby => GameLobby(
        players: [],
        spectators: [],
        status: GameLobbyStatus.pending,
        maxPlayers: maxPlayers,
        minPlayers: minPlayers,
        game: this,
      );
}

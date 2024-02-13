import 'package:flutter/material.dart';
import 'package:shatapp/domain/enum/games_enum.dart';

extension GamesUIUtils on Games {
  IconData getIcon() => Icons.games_outlined;
}

extension GameManagerUtils on Games {
  int getMinPlayers() {
    switch (this) {
      case Games.tris:
        return 2;
    }
  }

  int getMaxPlayers() {
    switch (this) {
      case Games.tris:
        return 2;
    }
  }
}

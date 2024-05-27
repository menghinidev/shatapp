import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/games_enum.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/pages/games/game_lobby/presentation/widgets/game_lobby_users.dart';
import 'package:shatapp/pages/games/snake/presentation/snake_game_section.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class GameLobbyPlayingSection extends ConsumerWidget with UiUtility {
  const GameLobbyPlayingSection({
    required this.gameLobby,
    super.key,
  });

  final GameLobby gameLobby;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        gameLobby.toWidget(),
        mediumDivider,
        GameLobbyUsers(users: gameLobby.players),
      ],
    );
  }
}

extension on GameLobby {
  Widget toWidget() {
    switch (game) {
      case Games.tris:
        return Placeholder();
      case Games.snake:
        return SnakeGameSection(gameLobby: this);
    }
  }
}

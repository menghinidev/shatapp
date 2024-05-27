import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/pages/games/application/game_lobby_manager.dart';
import 'package:shatapp/pages/games/game_lobby/presentation/widgets/game_lobby_container.dart';
import 'package:shatapp/pages/games/game_lobby/presentation/widgets/game_lobby_users.dart';
import 'package:shatapp/pages/games/utils/games_extension.dart';
import 'package:shatapp/utils/loader/shitting_progress_indicator.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class GameLobbyPendingSection extends ConsumerWidget with UiDimension {
  const GameLobbyPendingSection({
    required this.gameLobby,
    super.key,
  });

  final GameLobby gameLobby;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _GameLobbyPendingTitle(gameLobby: gameLobby),
        Padding(
          padding: mediumVerticalPadding,
          child: GameLobbyUsers(
            users: gameLobby.players,
          ),
        ),
        const ShittingProgressIndicator(),
        FilledButton(
          onPressed: () {
            context.pop();
            ref.read(gameManagerProvider(gameLobby.game)).leaveLobby(lobby: gameLobby);
          },
          child: Text('Exit lobby'),
        ),
      ],
    );
  }
}

class _GameLobbyPendingTitle extends StatelessWidget with UiUtility {
  const _GameLobbyPendingTitle({
    required this.gameLobby,
  });

  final GameLobby gameLobby;

  @override
  Widget build(BuildContext context) {
    return GameLobbyContainer(
      child: Column(
        children: [
          Icon(gameLobby.game.getIcon()),
          mediumDivider,
          Text(
            gameLobby.game.name.toUpperCase(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}

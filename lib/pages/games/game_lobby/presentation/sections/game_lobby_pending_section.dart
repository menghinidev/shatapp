import 'package:flutter/material.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
import 'package:shatapp/pages/dashboard/presentation/widgets/shit_user_avatar.dart';
import 'package:shatapp/pages/games/utils/games_extension.dart';
import 'package:shatapp/utils/loader/shitting_progress_indicator.dart';

class GameLobbyPendingSection extends StatelessWidget {
  const GameLobbyPendingSection({
    required this.gameLobby,
    super.key,
  });

  final GameLobby gameLobby;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _GameLobbyPendingTitle(gameLobby: gameLobby),
        _GameLobbyPendingUsers(
          title: 'Current players',
          users: gameLobby.players,
        ),
        _GameLobbyPendingUsers(
          title: 'Current spectators',
          users: gameLobby.spectators,
        ),
        const ShittingProgressIndicator(),
      ],
    );
  }
}

class _GameLobbyPendingTitle extends StatelessWidget {
  const _GameLobbyPendingTitle({
    required this.gameLobby,
  });

  final GameLobby gameLobby;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(gameLobby.game.getIcon()),
        const Text('Waiting players...'),
        Text('Max players: ${gameLobby.maxPlayers}'),
        Text('Required players: ${gameLobby.minPlayers}'),
      ],
    );
  }
}

class _GameLobbyPendingUsers extends StatelessWidget {
  const _GameLobbyPendingUsers({
    required this.users,
    required this.title,
  });

  final List<ShatAppUser> users;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        Wrap(
          children: users
              .map(
                (e) => ShitUserAvatar(
                  user: e,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

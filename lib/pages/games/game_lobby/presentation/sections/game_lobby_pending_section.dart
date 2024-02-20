import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/domain/repository/user/firestore_user_repository.dart';
import 'package:shatapp/pages/dashboard/presentation/widgets/shit_user_avatar.dart';
import 'package:shatapp/pages/games/utils/games_extension.dart';
import 'package:shatapp/utils/loader/shitting_progress_indicator.dart';
import 'package:shatapp/utils/provider_extension.dart';

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

  final List<String> users;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        Wrap(
          children: users
              .map(
                (e) => _GameLobbyPendingUser(
                  userId: e,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class _GameLobbyPendingUser extends ConsumerWidget {
  const _GameLobbyPendingUser({
    required this.userId,
  });

  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userByIdProvider(userId));
    return user.emptyUntil(
      data: (data) => ShitUserAvatar(
        user: data,
      ),
    );
  }
}

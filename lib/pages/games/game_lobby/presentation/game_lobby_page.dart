import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/game_lobby_status.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/pages/games/game_lobby/controller/game_lobby_provider.dart';
import 'package:shatapp/pages/games/game_lobby/presentation/sections/game_lobby_finished_section.dart';
import 'package:shatapp/pages/games/game_lobby/presentation/sections/game_lobby_pending_section.dart';
import 'package:shatapp/pages/games/game_lobby/presentation/sections/game_lobby_playing_section.dart';
import 'package:shatapp/utils/loader/shitting_progress_indicator.dart';
import 'package:shatapp/utils/ui_utils/scroll_utility.dart';

class GameLobbyPage extends ConsumerWidget {
  const GameLobbyPage({
    required this.id,
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameLobby = ref.watch(gameLobbyStreamProvider(id));
    return Scaffold(
      body: CustomScrollConfiguration(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar.large(
              title: Text('Shit game'),
            ),
            SliverToBoxAdapter(
              child: gameLobby.when(
                error: (error, stackTrace) => Center(
                  child: Text(error.toString()),
                ),
                loading: () => const Center(
                  child: ShittingProgressIndicator(),
                ),
                data: (data) => _GameLobbyPageByStatus(gameLobby: data),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GameLobbyPageByStatus extends StatelessWidget {
  const _GameLobbyPageByStatus({
    required this.gameLobby,
  });

  final GameLobby gameLobby;

  @override
  Widget build(BuildContext context) {
    switch (gameLobby.status) {
      case GameLobbyStatus.pending:
        return GameLobbyPendingSection(gameLobby: gameLobby);
      case GameLobbyStatus.playing:
        return GameLobbyPlayingSection(gameLobby: gameLobby);
      case GameLobbyStatus.finished:
        return GameLobbyFinishedSection(gameLobby: gameLobby);
    }
  }
}

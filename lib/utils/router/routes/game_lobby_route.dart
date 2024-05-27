import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shatapp/pages/games/game_lobby/presentation/game_lobby_page.dart';

class GameLobbyRoute extends GoRoute {
  GameLobbyRoute()
      : super(
          path: pageName,
          builder: (context, state) {
            if (state.extra is String) {
              return GameLobbyPage(
                id: state.extra! as String,
              );
            }
            return const SizedBox.shrink();
          },
        );
  static String pageName = 'game-lobby';
  static String get fromHome => '/$pageName';
}

import 'package:go_router/go_router.dart';
import 'package:shatapp/pages/games/game_lobby/presentation/game_lobby_page.dart';

class GameLobbyRoute extends GoRoute {
  GameLobbyRoute()
      : super(
          path: pageName,
          builder: (context, state) => GameLobbyPage(
            id: state.extra! as String,
          ),
        );
  static String pageName = 'game-lobby';
  static String get fromHome => '/$pageName';
}

import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/games_enum.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/domain/session/state/authenticationstate.dart';
import 'package:shatapp/pages/games/application/game_manager.dart';
import 'package:shatapp/pages/games/utils/games_extension.dart';
import 'package:shatapp/utils/router/routes/game_lobby_route.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class GameListItem extends ConsumerWidget with UiShape, UiDimension, UiUtility {
  const GameListItem({
    required this.game,
    super.key,
  });

  final Games game;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () async {
        final user = ref.read(authenticationSessionController);
        if (user is Logged) {
          await ref.read(gameManagerProvider(game)).joinLobby(user: user.user).then((value) {
            print(value);
            context.go(GameLobbyRoute.fromHome, extra: value.id);
          });
        }
      },
      child: Card(
        shape: roundedShape,
        elevation: smallElevation,
        child: Padding(
          padding: mediumPadding,
          child: Row(
            children: [
              Icon(game.getIcon()),
              largeDivider,
              Text(
                game.name.capitalize,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

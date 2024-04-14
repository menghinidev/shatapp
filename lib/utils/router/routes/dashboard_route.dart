import 'package:go_router/go_router.dart';
import 'package:shatapp/pages/dashboard/presentation/dashboard_page.dart';
import 'package:shatapp/utils/router/routes/game_lobby_route.dart';
import 'package:shatapp/utils/router/routes/profile_router.dart';
import 'package:shatapp/utils/router/routes/shit_taking_route.dart';

class DashboardPageRoute extends GoRoute {
  DashboardPageRoute()
      : super(
          path: pagePath,
          builder: (context, state) => const DashboardPage(),
          routes: [
            ShitTakingPageRoute(),
            ProfilePageRoute(),
            GameLobbyRoute(),
          ],
        );
  static String pagePath = '/';
}

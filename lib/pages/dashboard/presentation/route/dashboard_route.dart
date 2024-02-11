import 'package:go_router/go_router.dart';
import 'package:shatapp/pages/dashboard/presentation/page/dashboard_page.dart';
import 'package:shatapp/pages/shit_taking/presentation/route/shit_taking_route.dart';

class DashboardPageRoute extends GoRoute {
  DashboardPageRoute()
      : super(
          path: '/',
          builder: (context, state) => const DashboardPage(),
          routes: [
            ShitTakingPageRoute(),
          ],
        );
}

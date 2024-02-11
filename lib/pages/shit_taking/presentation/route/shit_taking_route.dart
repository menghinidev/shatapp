import 'package:go_router/go_router.dart';
import 'package:shatapp/pages/shit_taking/presentation/page/shit_taking_page.dart';

class ShitTakingPageRoute extends GoRoute {
  ShitTakingPageRoute()
      : super(
          path: pageName,
          builder: (context, state) => const ShitTakingPage(),
        );

  static String pageName = 'shit-taking';
  static String get fromHome => '/$pageName';
}

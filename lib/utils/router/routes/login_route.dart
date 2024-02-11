import 'package:go_router/go_router.dart';
import 'package:shatapp/pages/login/presentation/login_page.dart';

class LoginPageRoute extends GoRoute {
  LoginPageRoute()
      : super(
          path: pagePath,
          builder: (context, state) => const LoginPage(),
        );

  static String pagePath = '/login';
}

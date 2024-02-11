import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/utils/router/routes/login_route.dart';

final routerNotifierProvider = AutoDisposeAsyncNotifierProvider<RouterNotifier, bool>(() {
  return RouterNotifier();
});

class RouterNotifier extends AutoDisposeAsyncNotifier<bool> implements Listenable {
  // ignore: avoid_public_notifier_properties
  VoidCallback? routerListener;

  @override
  Future<bool> build() async {
    final authState = ref.watch(authenticationSessionController);
    ref.listenSelf((_, __) {
      if (state.isLoading) return;
      routerListener?.call();
    });
    return authState.map(
      logged: (_) => true,
      unknown: (_) => false,
    );
  }

  String? redirect(BuildContext context, GoRouterState state) {
    if (this.state.isLoading || this.state.hasError) return null;
    final isAuth = this.state.requireValue;
    if (isAuth && state.fullPath == LoginPageRoute.pagePath) return '/';
    if (!isAuth) return LoginPageRoute.pagePath;
    return null;
  }

  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    routerListener = null;
  }
}

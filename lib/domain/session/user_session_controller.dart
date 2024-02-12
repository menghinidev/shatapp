import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/user_session/user_session.dart';
import 'package:shatapp/domain/repository/user_session/i_user_session_repository.dart';
import 'package:shatapp/utils/env.dart';

final userSessionProvider = StateNotifierProvider<UserSessionController, UserSession>((ref) {
  final repo = ref.read(userSessionRepositoryProvider);
  return UserSessionController(
    repository: repo,
  );
});

class UserSessionController extends StateNotifier<UserSession> {
  UserSessionController({
    required this.repository,
  }) : super(UserSession.invalid());

  final UserSessionRepository repository;
  Timer? refreshTimer;

  void setTimer() {
    Timer.run(updadeSession);
    refreshTimer = Timer.periodic(
      const Duration(seconds: ShatAppEnv.userSessionRefreshSeconds),
      (timer) => updadeSession(),
    );
  }

  Future<void> updadeSession() async {
    await repository.setUserSession(session: state as CurrentSession);
    await repository.updateAllSessions();
  }

  void handleLogin(String userId) {
    refreshTimer?.cancel();
    state = UserSession(
      id: userId,
      lastOnlineDateTime: DateTime.now(),
      online: true,
    );
    setTimer();
  }

  Future<void> handleLogout(String userId) async {
    refreshTimer?.cancel();
    state = UserSession.invalid();
    await repository.setUserSession(
      session: CurrentSession(
        id: userId,
        lastOnlineDateTime: DateTime.now(),
        online: false,
      ),
    );
  }

  @override
  void dispose() {
    refreshTimer?.cancel();
    super.dispose();
  }
}

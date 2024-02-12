import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/user_session/user_session.dart';
import 'package:shatapp/domain/repository/user_session/i_user_session_repository.dart';

final userSessionProvider = StateNotifierProvider<UserSessionController, UserSession>((ref) {
  final repo = ref.read(userSessionRepositoryProvider);
  return UserSessionController(
    repository: repo,
  );
});

class UserSessionController extends StateNotifier<UserSession> {
  UserSessionController({
    required this.repository,
  }) : super(
          UserSession.invalid(),
        ) {
    authInstance.userChanges().listen(_listenAuthChanges);
  }

  final UserSessionRepository repository;
  final authInstance = FirebaseAuth.instance;
  Timer? refreshTimer;

  void _listenAuthChanges(User? user) {
    refreshTimer?.cancel();
    if (user != null) {
      state = UserSession(
        id: user.uid,
        lastOnlineDateTime: DateTime.now(),
        online: true,
      );
      setTimer();
    } else {
      state = UserSession.invalid();
    }
  }

  void setTimer() {
    Timer.run(updadeSession);
    refreshTimer = Timer.periodic(
      const Duration(seconds: UserSessionRepository.refreshSessionSeconds),
      (timer) => updadeSession(),
    );
  }

  Future<void> updadeSession() async {
    await repository.setUserSession(session: state as CurrentSession);
    await repository.updateAllSessions();
  }

  Future<void> handleLogout() async {
    state = UserSession.invalid();
  }

  @override
  void dispose() {
    refreshTimer?.cancel();
    super.dispose();
  }
}

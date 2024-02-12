import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/user_session/user_session.dart';
import 'package:shatapp/domain/repository/user_session/user_session_repository.dart';

final userSessionRepositoryProvider = Provider<UserSessionRepository>(
  (ref) => UserSessionRepositoryImpl(),
);

abstract class UserSessionRepository {
  Future<void> setUserSession({
    required CurrentSession session,
  });

  Future<void> updateAllSessions();

  Stream<UserSession> getUserSession({required String? userId});
}

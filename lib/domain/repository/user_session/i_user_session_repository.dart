abstract class UserSessionRepository {
  Future<void> updateOnlineStatus({
    required String userId,
    required bool online,
  });
}

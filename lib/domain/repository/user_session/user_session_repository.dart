import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/repository/user_session/i_user_session_repository.dart';

final userSessionRepositoryProvider = Provider<UserSessionRepository>(
  (ref) => UserSessionRepositoryImpl(),
);

class UserSessionRepositoryImpl implements UserSessionRepository {
  final firestore = FirebaseFirestore.instance;
  static const shitCollectionKey = 'userSession';

  @override
  Future<void> updateOnlineStatus({required String userId, required bool online}) async {
    final collection = firestore.collection(shitCollectionKey);
    await collection.doc(userId).set({'online': online});
  }
}

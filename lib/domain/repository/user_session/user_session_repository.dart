import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shatapp/domain/model/user_session/user_session.dart';
import 'package:shatapp/domain/repository/user_session/i_user_session_repository.dart';

class UserSessionRepositoryImpl implements UserSessionRepository {
  final firestore = FirebaseFirestore.instance;
  static const shitCollectionKey = 'userSession';

  @override
  Future<void> setUserSession({
    required CurrentSession session,
  }) async {
    final collection = firestore.collection(shitCollectionKey);
    await collection.doc(session.id).set(session.toJson());
  }

  @override
  Future<void> updateAllSessions() async {
    final collection = firestore.collection(shitCollectionKey);
    final batch = firestore.batch();

    final documensts = await collection
        .where('online', isEqualTo: true)
        .where(
          'lastOnlineDateTime',
          isLessThan: Timestamp.fromDate(
            DateTime.now().subtract(
              const Duration(
                seconds: UserSessionRepository.invalidSessionAfterSeconds,
              ),
            ),
          ),
        )
        .get();

    for (final doc in documensts.docs) {
      batch.update(doc.reference, {
        'online': false,
      });
    }
    await batch.commit();
  }
}

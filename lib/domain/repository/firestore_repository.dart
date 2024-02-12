import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/shit_consistency_enum.dart';
import 'package:shatapp/domain/enum/shit_effort_enum.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/model/stats/stats.dart';
import 'package:shatapp/domain/repository/i_shit_repository.dart';
import 'package:shatapp/domain/repository/mock_shit_repository.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/domain/session/state/authenticationstate.dart';
import 'package:shatapp/utils/env.dart';

final shitRepository = Provider<ShitRepository>((ref) {
  if (ShatAppEnv.isDevEnv) return MockShitRepository();
  return FirestoreShitRepository(
    authState: ref.watch(authenticationSessionController),
  );
});

class FirestoreShitRepository with ShitDtoMapper implements ShitRepository {
  FirestoreShitRepository({required this.authState});
  final firestore = FirebaseFirestore.instance;
  static const shitCollectionKey = 'shit';
  final AuthenticationState authState;

  @override
  Future<List<Shit>> getMyShitDiary() async {
    final loggedUser = authState.mapOrNull(logged: (data) => data.user);
    if (loggedUser == null) return Future.value(<Shit>[]);
    final collection = firestore.collection(shitCollectionKey);
    final documents = await collection.where('user.id', isEqualTo: loggedUser.id).get();
    return documents.docs.map((e) => mapDtoFromJson(e.id, e.data())).map(mapFromDto).toList()
      ..sort((a, b) => b.creationDateTime.compareTo(a.creationDateTime));
  }

  @override
  Future<Stats> getStats() {
    // TODO: implement getStats
    throw UnimplementedError();
  }

  @override
  Future<void> registerShit({
    required ShitEffort effort,
    required ShitConsistency consistency,
    String? note,
  }) async {
    final loggedUser = authState.mapOrNull(logged: (data) => data.user);
    if (loggedUser == null) return Future.value();
    final collection = firestore.collection(shitCollectionKey);
    final data = ShitDataDto(
      creationDateTime: DateTime.now(),
      effort: effort,
      consistency: consistency,
      note: note,
      //user: loggedUser,
    );
    final userJson = loggedUser.toJson();
    final json = data.toJson()
      ..update(
        'user',
        (_) => userJson,
      );
    await collection.add(json);
    return Future.value();
  }

  @override
  Future<List<Shit>> getGlobalShit() async {
    final loggedUser = authState.mapOrNull(logged: (data) => data.user);
    if (loggedUser == null) return Future.value(<Shit>[]);
    final collection = firestore.collection(shitCollectionKey);
    final documents = await collection.get();
    return documents.docs.map((e) => mapDtoFromJson(e.id, e.data())).map(mapFromDto).toList()
      ..sort((a, b) => b.creationDateTime.compareTo(a.creationDateTime));
  }

  @override
  Future<void> removeShit(String shitId) async {
    final loggedUser = authState.mapOrNull(logged: (data) => data.user);
    if (loggedUser == null) return Future.value();
    final collection = firestore.collection(shitCollectionKey);
    await collection.doc(shitId).delete();
    return Future.value();
  }
}

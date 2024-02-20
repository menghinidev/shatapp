import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/shit_consistency_enum.dart';
import 'package:shatapp/domain/enum/shit_effort_enum.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/model/shit_team/shitteam.dart';
import 'package:shatapp/domain/repository/shit/i_shit_repository.dart';
import 'package:shatapp/domain/repository/shit/mock_shit_repository.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/domain/session/state/authenticationstate.dart';
import 'package:shatapp/utils/env.dart';
import 'package:shatapp/utils/logger/logger_manager.dart';

final shitRepository = Provider<ShitRepository>((ref) {
  if (ShatAppEnv.isDevEnv) return MockShitRepository();
  return FirestoreShitRepository(
    authState: ref.watch(authenticationSessionController),
    logger: ref.read(loggerManagerProvider),
  );
});

final shitsByTeamProvider = FutureProvider.family<List<Shit>, String>((ref, teamId) async {
  final repo = ref.watch(shitRepository);
  return repo.getTeamShitDiary(teamId);
});

class FirestoreShitRepository with ShitDtoMapper implements ShitRepository {
  FirestoreShitRepository({
    required this.authState,
    required this.logger,
  });
  final firestore = FirebaseFirestore.instance;
  static const shitCollectionKey = 'shit';
  final AuthenticationState authState;
  final LoggerManager logger;

  @override
  Future<List<Shit>> getMyShitDiary() async {
    final loggedUser = authState.mapOrNull(logged: (data) => data.user);
    if (loggedUser == null) return Future.value(<Shit>[]);
    final collection = firestore.collection(shitCollectionKey);
    final documents = await collection.byUser(loggedUser.id).get();
    return documents.docs.map((e) => mapDtoFromJson(e.id, e.data())).map(mapFromDto).toList()
      ..sort((a, b) => b.creationDateTime.compareTo(a.creationDateTime));
  }

  @override
  Future<Shit?> registerShit({
    required ShitEffort effort,
    required ShitConsistency consistency,
    ShitTeam? team,
    String? note,
    String? color,
  }) async {
    final loggedUser = authState.mapOrNull(logged: (data) => data.user);
    if (loggedUser == null) return Future.value();
    final collection = firestore.collection(shitCollectionKey);
    final data = ShitDataDto(
      creationDateTime: DateTime.now(),
      effort: effort,
      consistency: consistency,
      note: note,
      color: color,
      team: team?.id,
      user: loggedUser.id,
    );
    final json = data.toJson();
    final response = await collection.add(json);
    return mapFromDto(mapDtoFromJson(response.id, json));
  }

  @override
  Future<List<Shit>> getCommunityShitDiary() async {
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

  @override
  Future<List<Shit>> getTeamShitDiary(String teamId) async {
    final loggedUser = authState.mapOrNull(logged: (data) => data.user);
    if (loggedUser == null) return Future.value(<Shit>[]);
    try {
      final collection = firestore.collection(shitCollectionKey);
      final documents = await collection.byTeam(teamId).get();
      return documents.docs.map((e) => mapDtoFromJson(e.id, e.data())).map(mapFromDto).toList()
        ..sort((a, b) => b.creationDateTime.compareTo(a.creationDateTime));
    } on Exception catch (e) {
      logger.logExeption(e);
      return Future.value(<Shit>[]);
    } catch (e) {
      logger.logMessage(e.toString());
      return Future.value(<Shit>[]);
    }
  }
}

extension ShitCollectionQuery on Query<Map<String, dynamic>> {
  Query<Map<String, dynamic>> byTeam(String teamId) => where('team', isNull: false).where(
        'team',
        isEqualTo: teamId,
      );
  Query<Map<String, dynamic>> byUser(String userId) => where('user', isNull: false).where(
        'user',
        isEqualTo: userId,
      );
}

/* final scriptManagerProvider = Provider<ScriptManager>((ref) {
  return ScriptManager(logger: ref.read(loggerManagerProvider));
});

class ScriptManager with ShitDtoMapper, UserDtoMapper {
  ScriptManager({
    required this.logger,
  });
  final firestore = FirebaseFirestore.instance;
  static const shitCollectionKey = 'shit';
  static const userCollectionKey = 'user';
  final LoggerManager logger;

  Future<void> runScript() async {
    final users = await _flatUsers();
    logger.logMessage('List of $users');
    //await _createUsersDocument(users);
    //logger.logMessage('Created user documents');
    await _fixShits(users);
    return Future.value();
  }

  Future<List<String>> _flatUsers() async {
    final shitCollection = firestore.collection(shitCollectionKey);
    final documents = await shitCollection.get();
    final shits = documents.docs.map((e) => mapDtoFromJson(e.id, e.data())).map(mapFromDto).toList();
    return shits.where((e) => e.user != null).map((e) => e.user!).toSet().toList();
  }

  Future<void> _createUsersDocument(List<ShatAppUser> users) async {
    final userCollection = firestore.collection(userCollectionKey);
    for (final user in users) {
      final userDto = ShatAppUserDataDto(
        name: user.name,
        imageUrl: user.imageUrl,
      );
      final userDtoJson = userDto.toJson();
      await userCollection.doc(user.id).set(userDtoJson);
    }
  }

  Future<List<ShatAppUser>> _getUsersDocument() async {
    final userCollection = firestore.collection(userCollectionKey);
    final userDocuments = await userCollection.get();
    return userDocuments.docs.map((e) => mapUserDtoFromJson(e.id, e.data())).map(mapUserFromDto).toList();
  }

  Future<void> _fixShits(List<String> users) async {
    final shitCollection = firestore.collection(shitCollectionKey);
    final documents = await shitCollection.get();
    final shits = documents.docs.map((e) => mapDtoFromJson(e.id, e.data())).map(mapFromDto).toList();
    for (final shit in shits) {
      final user = users.firstWhere((element) => element == shit.user);
      final newShit = ShitDataDto(
        consistency: shit.consistency,
        creationDateTime: shit.creationDateTime,
        effort: shit.effort,
        color: shit.color,
        note: shit.note,
        team: shit.teamId,
        user: user,
      );
      final json = newShit.toJson();
      //logger.logMessage(json.toString());
      await shitCollection.doc(shit.id).set(json);
    }
  }
}
 */

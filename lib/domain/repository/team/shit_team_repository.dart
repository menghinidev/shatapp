import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/model/shit_team/shitteam.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
import 'package:shatapp/domain/repository/team/i_shit_team_repository.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/domain/session/state/authenticationstate.dart';

final myShitTeamsProvider = FutureProvider<List<ShitTeam>>((ref) async {
  final repo = ref.watch(shitTeamRepositoryProvider);
  return repo.myShitTeams();
});

final myShitTeamProvider = FutureProvider.family<ShitTeam?, String?>((ref, id) async {
  if (id == null) return Future.value();
  final repo = ref.watch(shitTeamRepositoryProvider);
  return repo.myShitTeam(id);
});

final shitTeamRepositoryProvider = Provider<IShitTeamRepository>((ref) {
  return FirestoreShitTeamRepository(
    authState: ref.watch(authenticationSessionController),
  );
});

class FirestoreShitTeamRepository extends IShitTeamRepository with ShitDtoMapper, ShitTeamDtoMapper {
  FirestoreShitTeamRepository({required this.authState});

  static const shitTeamCollectionKey = 'team';
  static const shitCollectionKey = 'shit';

  final AuthenticationState authState;
  final firestore = FirebaseFirestore.instance;

  @override
  Future<void> createShitTeam({
    required String name,
    List<ShatAppUser> members = const <ShatAppUser>[],
  }) async {
    final loggedUser = authState.mapOrNull(logged: (data) => data.user);
    if (loggedUser == null) return Future.value();
    final collection = firestore.collection(shitTeamCollectionKey);
    final dto = ShitTeamDtoData(
      name: name,
      creator: loggedUser.id,
      members: <String>[...members.map((e) => e.id), loggedUser.id],
    );
    final json = dto.toJson();
    await collection.add(json);
    return Future.value();
  }

  @override
  Future<List<ShitTeam>> myShitTeams() async {
    final loggedUser = authState.mapOrNull(logged: (data) => data.user);
    if (loggedUser == null) return Future.value(<ShitTeam>[]);
    final collection = firestore.collection(shitTeamCollectionKey);
    final documents = await collection.get();
    return documents.docs
        .map((e) => mapShitTeamDtoFromJson(e.id, e.data()))
        .map(mapShitTeamFromDto)
        .where((element) => element.members.contains(loggedUser.id))
        .toList()
      ..sort((a, b) => a.name.compareTo(b.name));
  }

  @override
  Future<void> removeShitTeam(ShitTeam team) async {
    final loggedUser = authState.mapOrNull(logged: (data) => data.user);
    if (loggedUser == null) return Future.value();
    final collection = firestore.collection(shitTeamCollectionKey);
    await collection.doc(team.id).delete();
    return Future.value();
  }

  @override
  Future<ShitTeam?> myShitTeam(String teamId) async {
    final myTeams = await myShitTeams();
    return myTeams.where((element) => element.id == teamId).firstOrNull;
  }
}

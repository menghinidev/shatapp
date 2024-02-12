import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/model/shit_team/shitteam.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/domain/session/state/authenticationstate.dart';

final myShitTeamsProvider = FutureProvider<List<ShitTeam>>((ref) async {
  final repo = ref.watch(shitTeamRepositoryProvider);
  return repo.myShitTeams();
});

final shitTeamRepositoryProvider = Provider<IShitTeamRepository>((ref) {
  return FirestoreShitTeamRepository(
    authState: ref.watch(authenticationSessionController),
  );
});

abstract class IShitTeamRepository {
  Future<void> createShitTeam({
    required String name,
    List<ShatAppUser>? members,
  });

  Future<List<ShitTeam>> myShitTeams();

  Future<void> removeShitTeam();

  Future<List<Shit>> getTeamShitList(ShitTeam team);
}

class FirestoreShitTeamRepository extends IShitTeamRepository with ShitDtoMapper, ShitTeamDtoMapper {
  FirestoreShitTeamRepository({required this.authState});

  static const shitTeamCollectionKey = 'shit-team';

  final AuthenticationState authState;
  final firestore = FirebaseFirestore.instance;

  @override
  Future<void> createShitTeam({
    required String name,
    List<ShatAppUser>? members,
  }) async {
    final loggedUser = authState.mapOrNull(logged: (data) => data.user);
    if (loggedUser == null) return Future.value();
    final collection = firestore.collection(shitTeamCollectionKey);
    final dto = ShitTeamDtoData(
      name: name,
      creator: loggedUser,
      members: members ?? <ShatAppUser>[],
    );
    await collection.add(dto.toJson());
    return Future.value();
  }

  @override
  Future<List<ShitTeam>> myShitTeams() async {
    final loggedUser = authState.mapOrNull(logged: (data) => data.user);
    if (loggedUser == null) return Future.value(<ShitTeam>[]);
    final collection = firestore.collection(shitTeamCollectionKey);
    final documents = await collection.where('members.id', arrayContains: loggedUser.id).get();
    return documents.docs.map((e) => mapShitTeamDtoFromJson(e.id, e.data())).map(mapShitTeamFromDto).toList()
      ..sort((a, b) => a.name.compareTo(b.name));
  }

  @override
  Future<void> removeShitTeam() {
    // TODO: implement removeShitTeam
    throw UnimplementedError();
  }

  @override
  Future<List<Shit>> getTeamShitList(ShitTeam team) async {
    final loggedUser = authState.mapOrNull(logged: (data) => data.user);
    if (loggedUser == null) return Future.value(<Shit>[]);
    final collection = firestore.collection(shitTeamCollectionKey);
    final shits = <Shit>[];
    for (final shit in team.shits) {
      final doc = await collection.doc(shit).get();
      final mapped = mapFromDto(mapDtoFromJson(doc.id, doc.data()!));
      shits.add(mapped);
    }
    return Future.value(shits);
  }
}
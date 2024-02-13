import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shatapp/domain/enum/game_lobby_status.dart';
import 'package:shatapp/domain/enum/games_enum.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
import 'package:shatapp/domain/repository/game_lobby/i_game_lobby_repository.dart';

class GameLobbyRepositoryImpl implements GameLobbyRepository {
  final firestore = FirebaseFirestore.instance;
  static const shitCollectionKey = 'gameLobby';

  CollectionReference<GameLobby> get collection => firestore.collection(shitCollectionKey).withConverter(
        fromFirestore: (snapshot, options) => GameLobby.fromJson(snapshot.data()!),
        toFirestore: (value, options) => value.toJson(),
      );

  @override
  Future<GameLobby> createLobby({required GameLobby lobby}) async {
    final document = await collection.add(lobby);
    final newLobby = await document.get();
    return newLobby.data()!.copyWith(id: newLobby.id);
  }

  @override
  Future<GameLobby?> getPendingGameLobby({required Games game}) async {
    final document = await firestore
        .collection(shitCollectionKey)
        .where('game', isEqualTo: game.toString())
        .where('status', isEqualTo: GameLobbyStatus.pending.name)
        .limit(1)
        .get();
    final lobby = document.docs.firstOrNull?.data();
    return lobby != null ? GameLobby.fromJson(lobby) : null;
  }

  @override
  Future<GameLobby> joinLobby({
    required String id,
    required ShatAppUser user,
  }) async {
    final document = await collection.doc(id).get();
    final gameLobby = document.data()!;
    final status = gameLobby.status;
    if (status == GameLobbyStatus.pending && gameLobby.maxPlayers > gameLobby.players.length) {
      final players = gameLobby.players..add(user);
      await collection.doc(id).update(
            gameLobby
                .copyWith(
                  players: players,
                  status: players.length > gameLobby.minPlayers ? GameLobbyStatus.playing : gameLobby.status,
                )
                .toJson(),
          );
    }
    return joinLobbyAsSpectator(id: id, user: user);
  }

  @override
  Future<GameLobby> joinLobbyAsSpectator({
    required String id,
    required ShatAppUser user,
  }) async {
    final document = await collection.doc(id).get();
    final spectators = (document.data()?.spectators ?? [])..add(user);
    final gameLobby = document.data()!;
    await collection.doc(id).update(
          gameLobby
              .copyWith(
                spectators: spectators,
              )
              .toJson(),
        );
    return gameLobby;
  }

  @override
  Future<List<GameLobby>> getLobbies() {
    // TODO: implement getLobbies
    throw UnimplementedError();
  }

  @override
  Future<void> removeLobby({required String id}) {
    // TODO: implement removeLobby
    throw UnimplementedError();
  }

  @override
  Future<GameLobby> updateLobby({required GameLobby lobby}) {
    // TODO: implement updateLobby
    throw UnimplementedError();
  }

  @override
  Stream<GameLobby> getLobbyAsStream({required String id}) {
    return collection.doc(id).snapshots().map((event) => event.data()!);
  }
}

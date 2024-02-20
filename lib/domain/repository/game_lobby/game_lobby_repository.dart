import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shatapp/domain/enum/game_lobby_status.dart';
import 'package:shatapp/domain/enum/games_enum.dart';
import 'package:shatapp/domain/model/game_lobby/game_lobby.dart';
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
    await document.update({'id': document.id});
    final newLobby = await document.get();
    return newLobby.data()!;
  }

  @override
  Future<GameLobby?> getPendingGameLobby({required Games game}) async {
    final document = await firestore
        .collection(shitCollectionKey)
        .where('game', isEqualTo: game.name)
        .where('status', isEqualTo: GameLobbyStatus.pending.name)
        .limit(1)
        .get();
    final doc = document.docs.firstOrNull;
    return doc != null ? GameLobby.fromJson(doc.data()) : null;
  }

  @override
  Future<GameLobby> joinLobby({
    required String id,
    required String userId,
  }) async {
    final document = await collection.doc(id).get();
    var gameLobby = document.data()!;
    if (gameLobby.players.contains(userId)) return gameLobby;
    if (gameLobby.spectators.contains(userId)) {
      gameLobby = gameLobby.copyWith(
        spectators: gameLobby.spectators.where((element) => element != userId).toList(),
      );
    }

    final status = gameLobby.status;
    if (status == GameLobbyStatus.pending && gameLobby.maxPlayers > gameLobby.players.length) {
      final players = [...gameLobby.players, userId];
      final updateLobby = gameLobby.copyWith(
        players: players,
        status: players.length > gameLobby.minPlayers ? GameLobbyStatus.playing : gameLobby.status,
      );
      await collection.doc(id).update(
            updateLobby.toJson(),
          );
      return updateLobby;
    }
    return joinLobbyAsSpectator(id: id, userId: userId);
  }

  @override
  Future<GameLobby> joinLobbyAsSpectator({
    required String id,
    required String userId,
  }) async {
    final document = await collection.doc(id).get();

    final gameLobby = document.data()!;
    if (gameLobby.spectators.contains(userId)) return gameLobby;
    final spectators = <String>[...gameLobby.spectators, userId];
    final newLobby = gameLobby.copyWith(spectators: spectators).toJson();
    await collection.doc(id).update(
          newLobby,
        );
    return gameLobby;
  }

  @override
  Future<List<GameLobby>> getLobbies() {
    // TODO(tommy): implement getLobbies
    throw UnimplementedError();
  }

  @override
  Future<void> removeLobby({required String id}) {
    // TODO(tommy): implement removeLobby
    throw UnimplementedError();
  }

  @override
  Future<GameLobby> updateLobby({required GameLobby lobby}) {
    // TODO(tommy): implement updateLobby
    throw UnimplementedError();
  }

  @override
  Stream<GameLobby> getLobbyAsStream({required String id}) {
    return collection.doc(id).snapshots().map((event) => event.data()!);
  }
}

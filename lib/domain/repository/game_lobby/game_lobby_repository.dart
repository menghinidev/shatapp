import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shatapp/domain/enum/game_lobby_status.dart';
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
    final newLobby = await document.get();
    return newLobby.data()!;
  }

  @override
  Stream<List<GameLobby>> getGameLobbiesByStatus({required GameLobbyStatus? status}) {
    return collection.where('status', isEqualTo: status).snapshots().map(
          (event) => event.docs.map((e) => e.data()).toList(),
        );
  }

  @override
  Future<GameLobby> joinLobby({required String id, required String userId}) async {
    final document = await collection.doc(id).get();
    final gameLobby = document.data()!;
    final status = gameLobby.status;
    if (status == GameLobbyStatus.pending && gameLobby.maxPlayers > gameLobby.players.length) {
      final players = gameLobby.players..add(userId);
      await collection.doc(id).update(
            gameLobby
                .copyWith(
                  players: players,
                  status: players.length > gameLobby.minPlayers ? GameLobbyStatus.playing : gameLobby.status,
                )
                .toJson(),
          );
    }
    return joinLobbyAsSpectator(id: id, userId: userId);
  }

  @override
  Future<GameLobby> joinLobbyAsSpectator({required String id, required String userId}) async {
    final document = await collection.doc(id).get();
    final spectators = (document.data()?.spectators ?? [])..add(userId);
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
}

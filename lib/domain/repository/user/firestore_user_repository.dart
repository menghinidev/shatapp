import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
import 'package:shatapp/domain/repository/user/I_user_repository.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/domain/session/state/authenticationstate.dart';
import 'package:shatapp/utils/logger/logger_manager.dart';

final userRepositoryProvider = Provider<IUserRepository>((ref) {
  final authState = ref.watch(authenticationSessionController);
  return FirestoreUserRepository(
    logger: ref.read(loggerManagerProvider),
    authState: authState,
  );
});

final authRepositoryProvider = Provider<IAuthRepository>((ref) {
  return FirestoreAuthRepository();
});

final shitUsersProvider = FutureProvider<List<ShatAppUser>>((ref) async {
  final repo = ref.read(userRepositoryProvider);
  return repo.getShatAppCommunity();
});

final userByIdProvider = FutureProvider.family<ShatAppUser?, String?>((ref, id) async {
  if (id == null) return Future.value();
  final repo = ref.read(userRepositoryProvider);
  return repo.getUserById(id);
});

class FirestoreUserRepository with UserDtoMapper implements IUserRepository {
  FirestoreUserRepository({
    required this.logger,
    required this.authState,
  });

  final firestore = FirebaseFirestore.instance;
  static const shitCollectionKey = 'shit';
  static const userCollectionKey = 'user';
  final LoggerManager logger;
  final AuthenticationState authState;

  @override
  Future<ShatAppUser> getUserById(String userId) async {
    final userCollection = firestore.collection(userCollectionKey);
    final userDocument = await userCollection.doc(userId).get();
    final dto = mapUserDtoFromJson(userDocument.id, userDocument.data()!);
    return mapUserFromDto(dto);
  }

  @override
  Future<List<ShatAppUser>> getShatAppCommunity() async {
    final loggedUser = authState.mapOrNull(logged: (data) => data.user);
    if (loggedUser == null) return Future.value(<ShatAppUser>[]);
    final userCollection = firestore.collection(userCollectionKey);
    final userDocuments = await userCollection.get();
    final community = userDocuments.docs.map((e) => mapUserDtoFromJson(e.id, e.data())).map(mapUserFromDto).toList()
      ..remove(loggedUser);
    return community;
  }
}

class FirestoreAuthRepository implements IAuthRepository {
  final firestore = FirebaseFirestore.instance;

  @override
  Future<void> login(ShatAppUser user) async {
    final userCollection = firestore.collection(FirestoreUserRepository.userCollectionKey);
    final userDto = ShatAppUserDataDto(
      name: user.name,
      imageUrl: user.imageUrl,
    );
    final userDtoJson = userDto.toJson();
    await userCollection.doc(user.id).set(userDtoJson);
    return Future.value();
  }
}

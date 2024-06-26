import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
import 'package:shatapp/domain/repository/user/firestore_user_repository.dart';
import 'package:shatapp/domain/repository/user/i_user_repository.dart';
import 'package:shatapp/domain/session/state/authenticationstate.dart';
import 'package:shatapp/domain/session/user_session_controller.dart';
import 'package:shatapp/utils/dialog/dialog_manager.dart';
import 'package:shatapp/utils/logger/logger_manager.dart';

final authenticationSessionController =
    StateNotifierProvider<AuthenticationSessionController, AuthenticationState>((ref) {
  final dialogMaganer = ref.read(dialogManagerProvider);
  final logger = ref.read(loggerManagerProvider);
  final userSessionController = ref.read(userSessionProvider.notifier);
  final authRepository = ref.read(authRepositoryProvider);
  return AuthenticationSessionController(
    logger: logger,
    dialogManager: dialogMaganer,
    userSessionController: userSessionController,
    authRepository: authRepository,
  );
});

class AuthenticationSessionController extends StateNotifier<AuthenticationState> {
  AuthenticationSessionController({
    required this.logger,
    required this.dialogManager,
    required this.userSessionController,
    required this.authRepository,
  }) : super(AuthenticationState.unknown()) {
    authInstance.userChanges().listen(_listenAuthChanges);
  }

  final authInstance = FirebaseAuth.instance;
  final LoggerManager logger;
  final DialogManager dialogManager;
  final IAuthRepository authRepository;
  final UserSessionController userSessionController;
  final googleScopes = [
    'openid',
    'email',
    'profile',
  ];

  Future<void> loginWithGoogle() async {
    state = AuthenticationState.autenticating();
    final auth = await _authenticateWithGoogle();
    if (auth == null) {
      await dialogManager.showWarningDialog<void>(text: 'Errore nel login');
      state = AuthenticationState.unknown();
    }
    return Future.value();
  }

  Future<void> logout() async {
    await userSessionController.handleLogout((state as Logged).user.id);
    await authInstance.signOut();
  }

  Future<UserCredential?> _authenticateWithGoogle() async {
    try {
      final authInstance = GoogleSignIn(
        scopes: googleScopes,
      );
      final googleUser = await authInstance.signIn();
      final googleAuth = await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      return FirebaseAuth.instance.signInWithCredential(credential);
    } on Exception catch (e) {
      logger.logExeption(e);
      return null;
    }
  }

  Future<void> _listenAuthChanges(User? user) async {
    if (user == null) {
      logger.logMessage('User is currently signed out!');
      state = AuthenticationState.unknown();
    } else {
      final shatappUser = ShatAppUser(
        id: user.uid,
        name: user.displayName!,
        imageUrl: user.photoURL,
      );
      await authRepository.login(shatappUser);
      state = AuthenticationState.logged(user: shatappUser);
      userSessionController.handleLogin(user.uid);
      logger.logMessage('User is signed in!');
    }
    return Future.value();
  }
}

extension AuthProviderHelper on WidgetRef {
  AuthenticationSessionController get authController => read(authenticationSessionController.notifier);
  AuthenticationState get watchAuthState => watch(authenticationSessionController);
}

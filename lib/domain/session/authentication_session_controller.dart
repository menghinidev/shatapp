import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
import 'package:shatapp/domain/session/state/authenticationstate.dart';
import 'package:shatapp/domain/session/user_session_controller.dart';
import 'package:shatapp/utils/dialog/dialog_manager.dart';
import 'package:shatapp/utils/logger/logger_manager.dart';

final authenticationSessionController =
    StateNotifierProvider<AuthenticationSessionController, AuthenticationState>((ref) {
  final dialogMaganer = ref.read(dialogManagerProvider);
  final logger = ref.read(loggerManagerProvider);
  final userSessionController = ref.read(userSessionProvider.notifier);
  return AuthenticationSessionController(
    logger: logger,
    dialogManager: dialogMaganer,
    userSessionController: userSessionController,
  );
});

class AuthenticationSessionController extends StateNotifier<AuthenticationState> {
  AuthenticationSessionController({
    required this.logger,
    required this.dialogManager,
    required this.userSessionController,
  }) : super(AuthenticationState.unknown()) {
    authInstance.userChanges().listen(_listenAuthChanges);
  }

  final authInstance = FirebaseAuth.instance;
  final LoggerManager logger;
  final DialogManager dialogManager;
  final UserSessionController userSessionController;
  final googleScopes = [
    'openid',
    'email',
    'profile',
  ];

  Future<void> loginWithGoogle() async {
    final auth = await _authenticateWithGoogle();
    if (auth == null) return dialogManager.showWarningDialog(text: 'Errore nel login');
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

  void _listenAuthChanges(User? user) {
    if (user == null) {
      logger.logMessage('User is currently signed out!');
      state = AuthenticationState.unknown();
    } else {
      final shatappUser = ShatAppUser(
        id: user.uid,
        name: user.displayName!,
        imageUrl: user.photoURL,
      );
      state = AuthenticationState.logged(user: shatappUser);
      userSessionController.handleLogin(user.uid);
      logger.logMessage('User is signed in!');
    }
  }
}

extension AuthProviderHelper on WidgetRef {
  AuthenticationSessionController get authController => read(authenticationSessionController.notifier);
  AuthenticationState get watchAuthState => watch(authenticationSessionController);
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
import 'package:shatapp/domain/model/user_session/user_session.dart';
import 'package:shatapp/domain/repository/user_session/i_user_session_repository.dart';
import 'package:shatapp/utils/localization/date_formatter.dart';

final _userSessionStateProvider = StreamProvider.family<UserSession, String?>((ref, arg) {
  final repo = ref.read(userSessionRepositoryProvider);
  return repo.getUserSession(userId: arg);
});

class ShitUserAvatar extends ConsumerWidget with DateFormatter {
  const ShitUserAvatar({
    this.user,
    super.key,
  });

  final ShatAppUser? user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(_userSessionStateProvider(user?.id));
    return Tooltip(
      message: session.getMessage(dateFormatter: formatDateTime),
      child: Stack(
        children: [
          CircleAvatar(
            foregroundImage: NetworkImage(user?.imageUrl ?? ''),
            child: const Icon(Icons.person),
          ),
          Positioned(
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: session.color,
              ),
              width: 10,
              height: 10,
            ),
          ),
        ],
      ),
    );
  }
}

extension on AsyncValue<UserSession> {
  T on<T>({
    required T Function() orElse,
    T Function(CurrentSession)? onOnline,
    T Function(CurrentSession)? onOffline,
  }) {
    if (hasValue && requireValue is CurrentSession) {
      final currentSession = requireValue as CurrentSession;
      if (currentSession.online) {
        return onOnline != null ? onOnline(currentSession) : orElse();
      }
      return onOffline != null ? onOffline(currentSession) : orElse();
    }
    return orElse();
  }

  Color get color => on(
        orElse: () => Colors.red,
        onOnline: (_) => Colors.green,
      );

  String getMessage({
    required String Function(DateTime dateTime) dateFormatter,
  }) =>
      on(
        orElse: () => 'Has not shat yet',
        onOnline: (_) => 'Currently shitting',
        onOffline: (p0) => 'Last shit was at ${dateFormatter(p0.lastOnlineDateTime)}',
      );
}

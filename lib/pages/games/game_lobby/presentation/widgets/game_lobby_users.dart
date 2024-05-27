import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/repository/user/firestore_user_repository.dart';
import 'package:shatapp/pages/dashboard/presentation/widgets/shit_user_avatar.dart';
import 'package:shatapp/utils/provider_extension.dart';

class GameLobbyUsers extends StatelessWidget {
  const GameLobbyUsers({
    required this.users,
    super.key,
  });

  final List<String> users;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: users
          .map(
            (e) => _GameLobbyUser(
              userId: e,
            ),
          )
          .toList(),
    );
  }
}

class _GameLobbyUser extends ConsumerWidget {
  const _GameLobbyUser({
    required this.userId,
  });

  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userByIdProvider(userId));
    return user.emptyUntil(
      data: (data) => ShitUserAvatar(
        user: data,
      ),
    );
  }
}

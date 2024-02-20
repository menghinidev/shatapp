import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/shit_team/shitteam.dart';
import 'package:shatapp/domain/repository/shit/firestore_shit_repository.dart';
import 'package:shatapp/domain/repository/user/firestore_user_repository.dart';
import 'package:shatapp/utils/provider_extension.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class MyShitTeamListItem extends ConsumerWidget with UiShape, UiDimension, UiUtility {
  const MyShitTeamListItem({
    required this.team,
    super.key,
  });

  final ShitTeam team;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shits = ref.watch(shitsByTeamProvider(team.id));
    return Card(
      shape: mediumRoundedShape,
      child: Container(
        constraints: const BoxConstraints(maxHeight: 200),
        padding: mediumPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    team.name,
                    style: context.textTheme.titleLarge,
                  ),
                ),
                shits.loadUntil(
                  data: (data) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Shit count',
                        style: context.textTheme.titleMedium.withBold,
                      ),
                      Text(data.length.toString()),
                    ],
                  ),
                ),
              ],
            ),
            extraSmallDivider,
            ShitTeamMembersAvatarList(team: team),
          ],
        ),
      ),
    );
  }
}

class ShitTeamMembersAvatarList extends StatelessWidget {
  const ShitTeamMembersAvatarList({
    required this.team,
    this.avatarSize = UiDimension.mediumSize,
    super.key,
  });

  final ShitTeam team;
  final double avatarSize;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: UiDimension.smallSize,
      runSpacing: UiDimension.smallSize,
      children: [
        for (final member in team.members) _UserAvatar(userId: member, size: avatarSize),
      ],
    );
  }
}

class _UserAvatar extends ConsumerWidget {
  const _UserAvatar({this.userId, this.size});

  final String? userId;
  final double? size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userByIdProvider(userId));
    return user.emptyUntil(
      data: (user) => CircleAvatar(
        foregroundImage: NetworkImage(user?.imageUrl ?? ''),
        radius: size,
        child: const Icon(Icons.person),
      ),
    );
  }
}

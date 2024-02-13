import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/shit_team/shitteam.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class MyShitTeamListItem extends ConsumerWidget with UiShape, UiDimension, UiUtility {
  const MyShitTeamListItem({
    required this.team,
    super.key,
  });

  final ShitTeam team;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      shape: roundedShape,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Shit count',
                      style: context.textTheme.titleMedium.withBold,
                    ),
                    Text(team.shits.length.toString()),
                  ],
                ),
              ],
            ),
            extraSmallDivider,
            Wrap(
              spacing: UiDimension.smallSize,
              runSpacing: UiDimension.smallSize,
              children: [
                for (final member in team.members) _UserAvatar(user: member, size: UiDimension.mediumSize),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _UserAvatar extends ConsumerWidget {
  const _UserAvatar({this.user, this.size});

  final ShatAppUser? user;
  final double? size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CircleAvatar(
      foregroundImage: NetworkImage(user?.imageUrl ?? ''),
      radius: size,
      child: const Icon(Icons.person),
    );
  }
}

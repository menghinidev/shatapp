import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/shit_team/shitteam.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
import 'package:shatapp/domain/repository/shit_team_repository.dart';
import 'package:shatapp/pages/dashboard/presentation/widgets/dashboard_shit_list_item.dart';
import 'package:shatapp/utils/builder/empty_data_builder.dart';
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
    final shits = ref.watch(shitTeamShitsProvider(team));
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
                    Text('Shit count', style: context.textTheme.titleMedium),
                    Text(team.shits.length.toString()),
                  ],
                ),
                /* IconButton.filledTonal(
                  onPressed: () {
                    ref
                        .read(shitTeamRepositoryProvider)
                        .removeShitTeam(team)
                        .then((value) => ref.invalidate(myShitTeamsProvider));
                  },
                  icon: const Icon(Icons.delete_rounded),
                ), */
              ],
            ),
            smallDivider,
            shits.loadUntil(
              data: (data) => EmptyDataWidget(
                emptyCondition: data.isEmpty,
                emptyPlaceholderBuilder: (context) => Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Non ci sono cagate',
                    style: context.textTheme.bodyMedium.withGrayColor,
                  ),
                ),
                childBuilder: (context) => Flexible(
                  child: ListView.separated(
                    itemBuilder: (context, index) => DashboardShitListItem(
                      shit: data[index],
                    ),
                    separatorBuilder: (context, _) => mediumDivider,
                    itemCount: data.length,
                  ),
                ),
              ),
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

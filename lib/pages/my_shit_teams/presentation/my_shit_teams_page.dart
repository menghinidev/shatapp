import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/repository/shit_team_repository.dart';
import 'package:shatapp/pages/my_shit_teams/presentation/my_shit_team_list_item.dart';
import 'package:shatapp/pages/my_shit_teams/presentation/new_shit_team_dialog.dart';
import 'package:shatapp/utils/builder/empty_data_builder.dart';
import 'package:shatapp/utils/provider_extension.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class MyShitTeamsPage extends ConsumerWidget with UiDimension, UiUtility {
  const MyShitTeamsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teams = ref.watch(myShitTeamsProvider);
    return SliverPadding(
      padding: mediumHorizontalPadding,
      sliver: teams.loadUntil(
        applySliver: true,
        data: (data) => EmptyDataWidget(
          emptyCondition: data.isEmpty,
          emptyPlaceholderBuilder: (context) => SliverFillRemaining(
            child: Center(
              child: Text(
                'Non ci sono teams',
                style: context.textTheme.titleLarge.withGrayColor,
              ),
            ),
          ),
          childBuilder: (context) => SliverList.separated(
            itemBuilder: (context, index) => MyShitTeamListItem(team: data[index]),
            separatorBuilder: (context, _) => mediumDivider,
          ),
        ),
      ),
    );
  }
}

class ShowTeamCreationButton extends ConsumerWidget {
  const ShowTeamCreationButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () => showModalBottomSheet<void>(
        context: context,
        builder: (context) => CreateShitTeamBottomSheet(),
      ),
      child: const Icon(Icons.add),
    );
  }
}

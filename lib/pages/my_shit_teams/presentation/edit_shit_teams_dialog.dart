import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/repository/shit_team_repository.dart';
import 'package:shatapp/utils/builder/empty_data_builder.dart';
import 'package:shatapp/utils/logger/logger_manager.dart';
import 'package:shatapp/utils/provider_extension.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class EditShitTeamsBottomSheet extends ConsumerWidget with UiUtility, UiDimension, UiShape {
  const EditShitTeamsBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teams = ref.watch(myShitTeamsProvider);
    return BottomSheet(
      shape: topRounded,
      onClosing: () => ref.read(loggerManagerProvider).logMessage('Closing'),
      builder: (context) => teams.loadUntil(
        data: (data) => EmptyDataWidget(
          emptyCondition: data.isEmpty,
          emptyPlaceholderBuilder: (context) => Padding(
            padding: mediumPadding,
            child: Text(
              'Nessun team',
              style: context.textTheme.titleLarge,
            ),
          ),
          childBuilder: (context) => Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: mediumPadding,
                child: Text(
                  'Modifica',
                  style: context.textTheme.headlineSmall,
                ),
              ),
              Flexible(
                child: ListView.separated(
                  itemCount: data.length,
                  shrinkWrap: true,
                  separatorBuilder: (context, _) => smallDivider,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(data[index].name),
                    trailing: IconButton.filledTonal(
                      onPressed: () {
                        ref
                            .read(shitTeamRepositoryProvider)
                            .removeShitTeam(data[index])
                            .then((value) => ref.invalidate(myShitTeamsProvider));
                      },
                      icon: const Icon(Icons.delete_rounded),
                    ),
                    onTap: () => ref.read(loggerManagerProvider).logMessage('Item $index'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/repository/shit/firestore_shit_repository.dart';
import 'package:shatapp/domain/repository/team/shit_team_repository.dart';
import 'package:shatapp/domain/repository/user/firestore_user_repository.dart';
import 'package:shatapp/pages/dashboard/controller/dashboard_controller.dart';
import 'package:shatapp/pages/dashboard/presentation/widgets/shit_user_avatar.dart';
import 'package:shatapp/utils/localization/date_formatter.dart';
import 'package:shatapp/utils/provider_extension.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class DashboardShitListItem extends ConsumerWidget with DateFormatter, UiUtility, UiShape, UiDimension {
  const DashboardShitListItem({
    required this.shit,
    this.canDelete = false,
    super.key,
  });

  final Shit shit;
  final bool canDelete;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userByIdProvider(shit.user));
    return user.emptyUntil(
      data: (user) => Card(
        shape: mediumRoundedShape,
        elevation: smallElevation,
        child: Padding(
          padding: mediumPadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _ShitTeamSection(teamId: shit.teamId),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (user != null) ShitUserAvatar(user: user),
                  smallDivider,
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (user != null)
                          Text(
                            user.name,
                            style: context.textTheme.bodyLarge.withBold,
                          ),
                        extraSmallDivider,
                        Text(
                          formatDateTime(shit.creationDateTime),
                          style: context.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  if (canDelete) ...[
                    smallDivider,
                    IconButton.outlined(
                      onPressed: () async {
                        await ref.read(shitRepository).removeShit(shit.id);
                        ref
                          ..invalidate(myShitProvider)
                          ..invalidate(globalShitProvider);
                      },
                      visualDensity: VisualDensity.compact,
                      color: Theme.of(context).colorScheme.error,
                      icon: const Icon(Icons.delete_outline_rounded),
                    ),
                  ],
                ],
              ),
              smallDivider,
              Row(
                children: [
                  if (shit.color != null) ...[
                    Image.asset(
                      'assets/images/poo.png',
                      width: 36,
                      height: 36,
                      color: Color(
                        int.parse(shit.color!),
                      ),
                    ),
                    smallDivider,
                  ],
                  Expanded(
                    child: _ShitBadgeBar(
                      badges: [
                        shit.effort.name,
                        shit.consistency.name,
                      ],
                    ),
                  ),
                ],
              ),
              if (shit.note != null) ...[
                extraSmallDivider,
                Text(
                  shit.note!,
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _ShitBadgeBar extends ConsumerWidget {
  const _ShitBadgeBar({
    required this.badges,
  });

  final List<String> badges;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Wrap(
      spacing: UiDimension.smallSize,
      runSpacing: UiDimension.smallSize,
      children: [
        for (final badge in badges) _ShitBadgeWidget(badge: badge),
      ],
    );
  }
}

class _ShitBadgeWidget extends ConsumerWidget with UiUtility, UiDimension, UiShape {
  const _ShitBadgeWidget({required this.badge});

  final String badge;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Chip(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      label: Text(badge.capitalize),
      labelStyle: context.textTheme.bodySmall?.copyWith(
        color: Theme.of(context).colorScheme.onSecondaryContainer,
      ),
    );
  }
}

class _ShitTeamSection extends ConsumerWidget with UiUtility {
  const _ShitTeamSection({
    required this.teamId,
  });

  final String? teamId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teamProvider = ref.watch(myShitTeamProvider(teamId));

    return teamProvider.loadUntil(
      data: (data) => data != null
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: _ShitTeamNameChip(name: data.name),
                ),
                smallDivider,
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}

class _ShitTeamNameChip extends ConsumerWidget with UiUtility, UiDimension, UiShape {
  const _ShitTeamNameChip({required this.name});

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Chip(
      shape: smallRoundedShape,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      label: Text(name.capitalize),
      labelStyle: context.textTheme.bodySmall?.copyWith(
        color: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
    );
  }
}

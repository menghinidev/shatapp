import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/repository/firestore_repository.dart';
import 'package:shatapp/pages/dashboard/controller/dashboard_controller.dart';
import 'package:shatapp/pages/dashboard/presentation/widgets/shit_user_avatar.dart';
import 'package:shatapp/utils/localization/date_formatter.dart';
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
    return Card(
      shape: roundedShape,
      elevation: smallElevation,
      child: Padding(
        padding: mediumPadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShitUserAvatar(user: shit.user),
                smallDivider,
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        shit.user?.name ?? 'User',
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

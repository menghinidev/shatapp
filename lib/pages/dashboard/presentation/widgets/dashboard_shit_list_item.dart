import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
import 'package:shatapp/utils/localization/date_formatter.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class DashboardShitListItem extends StatelessWidget with DateFormatter, UiUtility {
  const DashboardShitListItem({
    required this.shit,
    super.key,
  });

  final Shit shit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _UserAvatar(user: shit.user),
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
          ],
        ),
        smallDivider,
        _ShitBadgeBar(
          badges: [
            shit.effort.name,
            shit.consistency.name,
          ],
        ),
      ],
    );
  }
}

class _UserAvatar extends ConsumerWidget {
  const _UserAvatar({this.user});

  final ShatAppUser? user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CircleAvatar(
      foregroundImage: NetworkImage(user?.imageUrl ?? ''),
      child: const Icon(Icons.person),
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

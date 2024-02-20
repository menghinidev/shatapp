import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/components/banner.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class GameListSection extends ConsumerWidget with UiUtility, UiDimension {
  const GameListSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SliverFillRemaining(child: ComingSoonFeature());
    /* return SliverPadding(
      padding: mediumPadding,
      sliver: SliverList.separated(
        itemBuilder: (context, index) => GameListItem(game: Games.values[index]),
        separatorBuilder: (context, index) => mediumDivider,
        itemCount: Games.values.length,
      ),
    ); */
  }
}

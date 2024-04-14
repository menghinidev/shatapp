import 'package:collection/collection.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
import 'package:shatapp/domain/repository/shit/firestore_shit_repository.dart';
import 'package:shatapp/pages/dashboard/presentation/widgets/dashboard_shit_list_item.dart';
import 'package:shatapp/utils/provider_extension.dart';
import 'package:shatapp/utils/ui_utils/scroll_utility.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

final userShitsRecordProvider = FutureProvider.family<List<Shit>, String>((ref, userId) async {
  final repo = ref.watch(shitRepository);
  final response = await repo.geUserShitDiary(userId);
  return response;
});

class ShitUserProfilePage extends ConsumerWidget with UiDimension, UiShape {
  const ShitUserProfilePage({
    required this.user,
    super.key,
    this.globalShits,
  });

  final ShatAppUser user;
  final List<Shit>? globalShits;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollConfiguration(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar.large(
              title: Text('Shit profile'),
            ),
            _ShatAppUserPageContent(
              user: user,
              globalShits: globalShits,
            ),
          ],
        ),
      ),
    );
  }
}

class _ShatAppUserPageContent extends ConsumerWidget with UiDimension, UiUtility, UiShape {
  const _ShatAppUserPageContent({
    required this.user,
    this.globalShits,
  });

  final List<Shit>? globalShits;
  final ShatAppUser user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shitRecords = ref.watch(userShitsRecordProvider(user.id));
    return shitRecords.loadUntil(
      applySliver: true,
      data: (data) => SliverPadding(
        padding: mediumPadding,
        sliver: SliverMainAxisGroup(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          user.name.capitalize,
                          style: context.textTheme.headlineSmall?.withBold,
                          softWrap: true,
                        ),
                      ),
                      if (globalShits != null) ...[
                        smallDivider,
                        Text(
                          '#${globalShits!.position(user.id)} shitter',
                          style: context.textTheme.titleLarge?.withBold.withItalic,
                        ),
                      ],
                    ],
                  ),
                  extraSmallDivider,
                  Text(
                    shattedLabel(data),
                    style: Theme.of(context).textTheme.titleLarge.withLightBlack,
                  ),
                  smallDivider,
                ],
              ),
            ),
            _ShitRecords(shitRecords: data),
          ],
        ),
      ),
    );
  }

  String shattedLabel(List<Shit> data) {
    final len = data.length;
    if (len == 0) return 'No shits recorded';
    if (len == 1) return 'Shat $len time';
    return 'Shat $len times';
  }
}

class ShatAppUserBottomSheet extends ConsumerWidget with UiDimension, UiUtility, UiShape {
  const ShatAppUserBottomSheet({
    required this.user,
    this.globalShits,
    super.key,
  });

  final List<Shit>? globalShits;
  final ShatAppUser user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shitRecords = ref.watch(userShitsRecordProvider(user.id));
    return shitRecords.loadUntil(
      data: (data) => CustomScrollConfiguration(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: mediumPadding,
              sliver: SliverToBoxAdapter(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            user.name.capitalize,
                            style: context.textTheme.headlineSmall?.withBold,
                            softWrap: true,
                          ),
                        ),
                        if (globalShits != null) ...[
                          smallDivider,
                          Text(
                            '#${globalShits!.position(user.id)} shitter',
                            style: context.textTheme.titleLarge?.withBold.withItalic,
                          ),
                        ],
                      ],
                    ),
                    extraSmallDivider,
                    Text(
                      shattedLabel(data),
                      style: Theme.of(context).textTheme.titleLarge.withLightBlack,
                    ),
                    smallDivider,
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: mediumPadding.copyWith(top: 0),
              sliver: _ShitRecords(shitRecords: data),
            ),
          ],
        ),
      ),
    );
  }

  String shattedLabel(List<Shit> data) {
    final len = data.length;
    if (len == 0) return 'No shits recorded';
    if (len == 1) return 'Shat $len time';
    return 'Shat $len times';
  }
}

class _ShitRecords extends ConsumerWidget with UiUtility {
  const _ShitRecords({
    required this.shitRecords,
  });

  final List<Shit> shitRecords;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverList.separated(
      separatorBuilder: (context, index) => mediumDivider,
      itemCount: shitRecords.length,
      itemBuilder: (context, index) => UserRecordShitListItem(
        shit: shitRecords[index],
      ),
    );
  }
}

extension ShitLeaderboard on List<Shit> {
  int position(String userId) {
    final grouped = groupListsBy((element) => element.user!).map((key, value) => MapEntry(key, value.length));
    final entries = [...grouped.entries]..sort((a, b) => b.value.compareTo(a.value));
    final myIndex = entries.map((e) => e.key).toList().indexOf(userId);
    return myIndex + 1;
  }
}

extension ShatAppUserUtils on BuildContext {
  Future<void> showShatAppUserBottomSheet(
    ShatAppUser user, {
    ShapeBorder? shape,
    List<Shit>? data,
  }) =>
      showModalBottomSheet<void>(
        context: this,
        shape: shape,
        useSafeArea: true,
        isScrollControlled: true,
        enableDrag: false,
        showDragHandle: true,
        constraints: const BoxConstraints(maxHeight: 700),
        builder: (context) => ShatAppUserBottomSheet(
          user: user,
          globalShits: data,
        ),
      );
}

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
import 'package:shatapp/domain/repository/shit/firestore_shit_repository.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/pages/dashboard/controller/dashboard_controller.dart';
import 'package:shatapp/pages/dashboard/presentation/widgets/dashboard_shit_list_item.dart';
import 'package:shatapp/utils/provider_extension.dart';
import 'package:shatapp/utils/ui_utils/scroll_utility.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

final userShitsRecordProvider = FutureProvider.family<List<Shit>, String>((ref, userId) async {
  final repo = ref.watch(shitRepository);
  final response = await repo.geUserShitDiary(userId);
  return response;
});

class ShatAppUserBottomSheet extends ConsumerWidget with UiDimension, UiUtility, UiShape {
  const ShatAppUserBottomSheet({
    required this.user,
    super.key,
  });

  final ShatAppUser user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shits = ref.watch(globalShitProvider);
    final logged = ref.watch(authenticationSessionController).mapOrNull(logged: (value) => value.user);
    return shits.loadUntil(
      data: (data) => _ShatAppUserBottomSheet(
        user: user,
        loggedUser: logged!,
        globalShits: data,
        userShits: data.byUser(user.id),
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

class _ShatAppUserBottomSheet extends ConsumerWidget with UiDimension, UiUtility, UiShape {
  const _ShatAppUserBottomSheet({
    required this.user,
    required this.globalShits,
    required this.userShits,
    required this.loggedUser,
  });

  final ShatAppUser user;
  final List<Shit> globalShits;
  final List<Shit> userShits;
  final ShatAppUser loggedUser;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollConfiguration(
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
                      smallDivider,
                      Text(
                        '#${globalShits.position(user.id)} shitter',
                        style: context.textTheme.titleLarge?.withBold.withItalic,
                      ),
                    ],
                  ),
                  extraSmallDivider,
                  Text(
                    shattedLabel(userShits),
                    style: Theme.of(context).textTheme.titleLarge.withLightBlack,
                  ),
                  smallDivider,
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: mediumPadding.copyWith(top: 0),
            sliver: _ShitRecords(
              shitRecords: userShits,
              loggedUser: loggedUser,
            ),
          ),
        ],
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
    required this.loggedUser,
  });

  final List<Shit> shitRecords;
  final ShatAppUser loggedUser;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverList.separated(
      separatorBuilder: (context, index) => mediumDivider,
      itemCount: shitRecords.length,
      itemBuilder: (context, index) => UserRecordShitListItem(
        loggedUser: loggedUser,
        shit: shitRecords[index],
      ),
    );
  }
}

extension ShatAppUserUtils on BuildContext {
  Future<void> showShatAppUserBottomSheet(
    ShatAppUser user, {
    ShapeBorder? shape,
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
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/pages/dashboard/controller/dashboard_controller.dart';
import 'package:shatapp/pages/dashboard/presentation/section/user_profile_bottom_sheet.dart';
import 'package:shatapp/pages/dashboard/presentation/widgets/dashboard_shit_list_item.dart';
import 'package:shatapp/utils/builder/empty_data_builder.dart';
import 'package:shatapp/utils/provider_extension.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class GlobalShitSection extends ConsumerWidget with UiDimension, UiUtility, UiShape {
  const GlobalShitSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logged = ref.watch(authenticationSessionController).mapOrNull(logged: (value) => value.user);
    final shits = ref.watch(globalShitProvider);
    return shits.loadUntil(
      applySliver: true,
      data: (data) => SliverPadding(
        padding: mediumPadding,
        sliver: EmptyDataWidget(
          emptyCondition: data.isEmpty,
          emptyPlaceholderBuilder: (_) => SliverFillRemaining(
            child: Center(
              child: Text(
                'Nessuna cagata',
                style: context.textTheme.titleLarge.withGrayColor,
              ),
            ),
          ),
          childBuilder: (context) => SliverList.separated(
            itemBuilder: (context, index) => DashboardShitListItem(
              loggedUser: logged!,
              shit: data[index],
              canReact: true,
              onTap: (user) => context.showShatAppUserBottomSheet(
                user!,
                shape: mediumTopRounded,
              ),
            ),
            separatorBuilder: (context, index) => mediumDivider,
            itemCount: data.length,
          ),
        ),
      ),
    );
  }
}

/* class ShatAppUsersSection extends ConsumerWidget with UiDimension, UiUtility, UiShape {
  const ShatAppUsersSection({
    required this.shitRecords,
    super.key,
  });

  final List<Shit> shitRecords;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(shitUsersProvider);
    return users.loadUntil(
      applySliver: true,
      data: (data) => SliverPadding(
        padding: mediumPadding,
        sliver: EmptyDataWidget(
          emptyCondition: data.isEmpty,
          emptyPlaceholderBuilder: (_) => SliverFillRemaining(
            child: Center(
              child: Text(
                'Nessun utente',
                style: context.textTheme.titleLarge.withGrayColor,
              ),
            ),
          ),
          childBuilder: (context) => SliverList.separated(
            itemBuilder: (context, index) => DashboardShitListItem(
              shit: data[index],
              onTap: (user) => context.showShatAppUserBottomSheet(
                user!,
                data: data,
                shape: mediumTopRounded,
              ),
            ),
            separatorBuilder: (context, index) => mediumDivider,
            itemCount: data.length,
          ),
        ),
      ),
    );
  }
} */

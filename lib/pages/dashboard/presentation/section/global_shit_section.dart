import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/pages/dashboard/controller/dashboard_controller.dart';
import 'package:shatapp/pages/dashboard/presentation/widgets/dashboard_shit_list_item.dart';
import 'package:shatapp/pages/profile/shit_profile_page.dart';
import 'package:shatapp/utils/builder/empty_data_builder.dart';
import 'package:shatapp/utils/provider_extension.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class GlobalShitSection extends ConsumerWidget with UiDimension, UiUtility, UiShape {
  const GlobalShitSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/pages/dashboard/controller/dashboard_controller.dart';
import 'package:shatapp/pages/dashboard/presentation/section/user_details_bottom_sheet.dart';
import 'package:shatapp/pages/dashboard/presentation/widgets/dashboard_shit_list_item.dart';
import 'package:shatapp/utils/builder/empty_data_builder.dart';
import 'package:shatapp/utils/provider_extension.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class MyShitDiarySection extends ConsumerWidget with UiDimension, UiUtility, UiShape {
  const MyShitDiarySection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shits = ref.watch(myShitProvider);
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
              canDelete: true,
              onTap: (user) => showModalBottomSheet<void>(
                context: context,
                shape: mediumTopRounded,
                builder: (context) => ShatAppUserBottomSheet(user: user!),
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

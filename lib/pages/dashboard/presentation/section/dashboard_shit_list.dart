import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/pages/dashboard/controller/dashboard_controller.dart';
import 'package:shatapp/pages/dashboard/presentation/widgets/dashboard_shit_list_item.dart';
import 'package:shatapp/utils/provider_extension.dart';
import 'package:shatapp/utils/ui_utils/scroll_utility.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class DashBoardShitList extends ConsumerWidget with UiDimension, UiUtility {
  const DashBoardShitList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shits = ref.watch(dashboardProvider);
    return CustomScrollConfiguration(
      child: RefreshIndicator(
        onRefresh: () {
          ref.invalidate(dashboardProvider);
          return Future.value();
        },
        child: shits.loadUntil(
          data: (data) => ListView.separated(
            shrinkWrap: true,
            padding: mediumPadding,
            itemBuilder: (context, index) => DashboardShitListItem(
              shit: data[index],
            ),
            separatorBuilder: (context, index) => largeDivider,
            itemCount: data.length,
          ),
        ),
      ),
    );
  }
}

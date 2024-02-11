import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/pages/dashboard/controller/dashboard_controller.dart';
import 'package:shatapp/pages/dashboard/presentation/widgets/dashboard_stats_item.dart';
import 'package:shatapp/utils/provider_extension.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class DashboardStats extends ConsumerWidget {
  const DashboardStats({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stats = ref.watch(dashboardStatsStateProvider);
    return stats.loadUntil(
      data: (data) => Wrap(
        spacing: UiDimension.mediumSize,
        runSpacing: UiDimension.mediumSize,
        children: [
          DashboardStatsItem(
            label: 'Total count',
            child: Text(
              data.totalCount.toString(),
            ),
          ),
          DashboardStatsItem(
            label: 'Average effort',
            child: Text(
              data.averageEffort!.name,
            ),
          ),
          DashboardStatsItem(
            label: 'Average consistency',
            child: Text(
              data.averageConsistency!.name,
            ),
          ),
          DashboardStatsItem(
            label: 'Shittiest day',
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  data.shittiestDayCount.toString(),
                ),
                Text(
                  data.shittiestDay.toString(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

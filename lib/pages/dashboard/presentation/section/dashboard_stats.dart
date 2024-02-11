import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/pages/dashboard/controller/dashboard_controller.dart';
import 'package:shatapp/pages/dashboard/presentation/widgets/dashboard_stats_item.dart';

class DashboardStats extends ConsumerWidget {
  const DashboardStats({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stats = ref.watch(dashboardStatsStateProvider);
    return stats.when(
      data: (data) => Wrap(
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
      error: (error, stackTrace) => Center(
        child: Text(
          error.toString(),
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/pages/dashboard/controller/dashboard_controller.dart';
import 'package:shatapp/pages/dashboard/presentation/widgets/dashboard_shit_list_item.dart';
import 'package:shatapp/utils/ui_utils/scroll_utility.dart';

class DashBoardShitList extends ConsumerWidget {
  const DashBoardShitList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shits = ref.watch(dashboardProvider);
    return CustomScrollConfiguration(
      child: RefreshIndicator(
        onRefresh: () => ref.refresh(dashboardProvider.future),
        child: shits.when(
          data: (data) => ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => DashboardShitListItem(
              shit: data[index],
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: data.length,
          ),
          error: (error, stackTrace) => const Center(
            child: Text('An error has occurred while fetching your shits.'),
          ),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}

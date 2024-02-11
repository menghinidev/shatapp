import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/pages/dashboard/presentation/section/dashboard_shit_list.dart';
import 'package:shatapp/pages/dashboard/presentation/section/dashboard_stats.dart';
import 'package:shatapp/utils/router/routes/shit_taking_route.dart';
import 'package:shatapp/utils/router/showcase_router.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class DashboardPage extends ConsumerWidget with UiUtility {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton.filledTonal(
            onPressed: () => ref.authController.logout(),
            icon: const Icon(Icons.logout_outlined),
          ),
          smallDivider,
        ],
      ),
      body: const Column(
        children: [
          DashboardStats(),
          DashBoardShitList(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => ref.read(routerProvider).go(ShitTakingPageRoute.fromHome),
        icon: const Icon(Icons.wc_outlined),
        label: const Text('Take a shit'),
      ),
    );
  }
}

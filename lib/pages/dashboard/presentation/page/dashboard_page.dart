import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/pages/shit_taking/presentation/route/shit_taking_route.dart';
import 'package:shatapp/utils/router/showcase_router.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: const Center(
        child: Text('Dashboard Page'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => ref.read(routerProvider).go(ShitTakingPageRoute.fromHome),
        icon: const Icon(Icons.wc_outlined),
        label: const Text('Take a shit'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/pages/dashboard/presentation/section/dashboard_shit_list.dart';
import 'package:shatapp/pages/dashboard/presentation/section/global_shit_section.dart';
import 'package:shatapp/utils/router/routes/shit_taking_route.dart';
import 'package:shatapp/utils/router/showcase_router.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

final _homePageIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class DashboardPage extends HookConsumerWidget with UiUtility {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();
    final index = ref.watch(_homePageIndexProvider);
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: pageController.jumpToPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'My Shit',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bar_chart_rounded,
            ),
            label: 'World Shit',
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (value) => ref.read(_homePageIndexProvider.notifier).state = value,
        children: const [
          MyShitDiarySection(),
          GlobalShitSection(),
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

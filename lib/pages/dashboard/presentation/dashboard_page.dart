import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/pages/dashboard/controller/dashboard_controller.dart';
import 'package:shatapp/pages/dashboard/presentation/section/dashboard_shit_list.dart';
import 'package:shatapp/pages/dashboard/presentation/section/global_shit_section.dart';
import 'package:shatapp/utils/router/routes/shit_taking_route.dart';
import 'package:shatapp/utils/router/showcase_router.dart';
import 'package:shatapp/utils/ui_utils/scroll_utility.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

final _homePageIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class DashboardPage extends HookConsumerWidget with UiUtility {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(_homePageIndexProvider);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) => ref.read(_homePageIndexProvider.notifier).state = value,
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
      body: RefreshIndicator(
        onRefresh: () {
          ref
            ..invalidate(myShitProvider)
            ..invalidate(globalShitProvider);
          return Future.value();
        },
        child: CustomScrollConfiguration(
          child: CustomScrollView(
            slivers: [
              SliverAppBar.large(
                title: Text(index == 0 ? 'MyShit' : 'Community'),
                actions: [
                  IconButton.filledTonal(
                    onPressed: () => ref.authController.logout(),
                    icon: const Icon(Icons.logout_outlined),
                  ),
                  extraSmallDivider,
                ],
              ),
              const [
                MyShitDiarySection(),
                GlobalShitSection(),
              ][index],
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => ref.read(routerProvider).go(ShitTakingPageRoute.fromHome),
        icon: const Icon(Icons.wc_outlined),
        label: const Text('Take a shit'),
      ),
    );
  }
}

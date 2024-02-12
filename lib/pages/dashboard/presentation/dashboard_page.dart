import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/pages/dashboard/controller/dashboard_controller.dart';
import 'package:shatapp/pages/dashboard/presentation/section/dashboard_shit_list.dart';
import 'package:shatapp/pages/dashboard/presentation/section/global_shit_section.dart';
import 'package:shatapp/pages/my_shit_teams/presentation/my_shit_teams_page.dart';
import 'package:shatapp/utils/router/routes/shit_taking_route.dart';
import 'package:shatapp/utils/router/showcase_router.dart';
import 'package:shatapp/utils/theme/theme_switch.dart';
import 'package:shatapp/utils/ui_utils/scroll_utility.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

final _homePageIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class DashboardPage extends HookConsumerWidget with UiUtility {
  const DashboardPage({super.key});

  static const List<String> pagesTitle = ['Personal', 'Community', 'Teams'];

  Widget? getFAB(int index) {
    if (index == 0) {
      return const NewShitTakingButton();
    } else if (index == 2) return const ShowTeamCreationButton();
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(_homePageIndexProvider);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) => ref.read(_homePageIndexProvider.notifier).state = value,
        items: const [
          BottomNavigationBarItem(
            label: 'My Shit',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'World Shit',
            icon: Icon(
              Icons.bar_chart_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Teams',
            icon: Icon(Icons.people_alt_outlined),
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
                title: Text(pagesTitle[index]),
                actions: [
                  const ThemeModeSwitch(),
                  extraSmallDivider,
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
                MyShitTeamsPage(),
              ][index],
            ],
          ),
        ),
      ),
      floatingActionButton: getFAB(index),
    );
  }
}

class NewShitTakingButton extends ConsumerWidget {
  const NewShitTakingButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () => ref.read(routerProvider).go(ShitTakingPageRoute.fromHome),
      child: Image.asset(
        'assets/images/poo.png',
        color: Colors.white,
        width: 24,
        height: 24,
      ),
    );
  }
}

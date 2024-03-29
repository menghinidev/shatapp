import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/session/authentication_session_controller.dart';
import 'package:shatapp/pages/dashboard/controller/dashboard_controller.dart';
import 'package:shatapp/pages/dashboard/presentation/section/dashboard_shit_list.dart';
import 'package:shatapp/pages/dashboard/presentation/section/global_shit_section.dart';
import 'package:shatapp/pages/games/presentation/section/game_list_section.dart';
import 'package:shatapp/pages/my_shit_teams/presentation/edit_shit_teams_dialog.dart';
import 'package:shatapp/pages/my_shit_teams/presentation/my_shit_teams_page.dart';
import 'package:shatapp/pages/my_shit_teams/presentation/new_shit_team_dialog.dart';
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

  static const List<String> pagesTitle = ['Personal', 'Community', 'Teams', 'Games'];

  Widget? getFAB(int index) {
    if (index == 0) {
      return const NewShitTakingButton();
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(_homePageIndexProvider);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
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
          BottomNavigationBarItem(
            label: 'Games',
            icon: Icon(Icons.games_outlined),
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
                  if (index == 0) ...[
                    const ThemeModeSwitch(),
                    extraSmallDivider,
                    IconButton(
                      onPressed: () => ref.authController.logout(),
                      icon: const Icon(Icons.logout_outlined),
                    ),
                  ],
                  if (index == 2) ...[
                    IconButton(
                      onPressed: () => _showEditTeamsBottomSheet(context, ref),
                      visualDensity: VisualDensity.compact,
                      icon: const Icon(Icons.edit_rounded),
                    ),
                    IconButton(
                      onPressed: () => _showAddTeamBottomSheet(context, ref),
                      visualDensity: VisualDensity.compact,
                      icon: const Icon(Icons.add),
                    ),
                  ],
                  extraSmallDivider,
                ],
              ),
              const [
                MyShitDiarySection(),
                GlobalShitSection(),
                MyShitTeamsPage(),
                GameListSection(),
              ][index],
            ],
          ),
        ),
      ),
      floatingActionButton: getFAB(index),
    );
  }

  Future<void> _showAddTeamBottomSheet(BuildContext context, WidgetRef ref) {
    /* ref.read(snackBarManagerProvider).showMessage(context, 'Coming soon');
    return Future.value(); */
    return showModalBottomSheet<void>(
      context: context,
      builder: (_) => CreateShitTeamBottomSheet(),
    );
  }

  Future<void> _showEditTeamsBottomSheet(BuildContext context, WidgetRef ref) {
    /* ref.read(snackBarManagerProvider).showMessage(context, 'Coming soon');
    return Future.value(); */
    return showModalBottomSheet<void>(
      context: context,
      builder: (_) => const EditShitTeamsBottomSheet(),
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

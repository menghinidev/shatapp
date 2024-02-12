import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/shit_team/shitteam.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class MyShitTeamListItem extends ConsumerWidget with UiShape {
  const MyShitTeamListItem({
    required this.team,
    super.key,
  });

  final ShitTeam team;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      shape: roundedShape,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Center(
              child: Text(team.name),
            ),
          ),
        ],
      ),
    );
  }
}

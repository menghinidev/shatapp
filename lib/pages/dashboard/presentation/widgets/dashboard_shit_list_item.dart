import 'package:flutter/material.dart';
import 'package:shatapp/domain/model/shit/shit.dart';

class DashboardShitListItem extends StatelessWidget {
  const DashboardShitListItem({
    required this.shit,
    super.key,
  });

  final Shit shit;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Wrap(
          runAlignment: WrapAlignment.spaceBetween,
          alignment: WrapAlignment.spaceBetween,
          children: [
            Text(shit.effort.name),
            Text(shit.consistency.name),
            if (shit.note != null) Text(shit.note!),
            Text(shit.creationDateTime.toString()),
          ],
        ),
      ),
    );
  }
}

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(shit.severity.name),
            Text(shit.creationDateTime.toString()),
          ],
        ),
      ),
    );
  }
}

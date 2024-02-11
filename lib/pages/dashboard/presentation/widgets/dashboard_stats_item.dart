import 'package:flutter/material.dart';

class DashboardStatsItem extends StatelessWidget {
  const DashboardStatsItem({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Theme.of(context).primaryColor),
        color: Theme.of(context).cardColor,
      ),
      child: child,
    );
  }
}

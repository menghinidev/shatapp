import 'package:flutter/material.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class DashboardStatsItem extends StatelessWidget with UiUtility, UiDimension, UiShape {
  const DashboardStatsItem({
    required this.label,
    required this.child,
    super.key,
  });

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: mediumPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          smallDivider,
          child,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shatapp/domain/enum/shit_severity_enum.dart';

class ShitSeverityPicker extends StatelessWidget {
  const ShitSeverityPicker({
    required this.onSelect,
    required this.selected,
    super.key,
  });

  final ShitSeverity selected;
  final void Function(ShitSeverity) onSelect;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rate your shit',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Slider(
          label: selected.name,
          max: (ShitSeverity.values.length - 1).toDouble(),
          value: ShitSeverity.values.indexOf(selected).toDouble(),
          divisions: ShitSeverity.values.length - 1,
          onChanged: (value) => onSelect(
            ShitSeverity.values[value.toInt()],
          ),
        ),
      ],
    );
  }
}

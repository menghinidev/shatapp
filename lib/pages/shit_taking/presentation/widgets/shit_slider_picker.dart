import 'package:flutter/material.dart';

class ShitSliderPicker<T> extends StatelessWidget {
  const ShitSliderPicker({
    required this.label,
    required this.onSelect,
    required this.selected,
    required this.values,
    required this.itemBuilder,
    super.key,
  });

  final String label;
  final T selected;
  final List<T> values;
  final void Function(T) onSelect;
  final String Function(T) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Slider(
          label: itemBuilder(selected),
          max: (values.length - 1).toDouble(),
          value: values.indexOf(selected).toDouble(),
          divisions: values.length - 1,
          onChanged: (value) => onSelect(
            values[value.toInt()],
          ),
        ),
      ],
    );
  }
}

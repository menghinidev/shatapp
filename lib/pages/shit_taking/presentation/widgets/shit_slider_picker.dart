import 'package:flutter/material.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class ShitSliderPicker<T> extends StatelessWidget with UiUtility, UiDimension {
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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: context.textTheme.titleLarge,
        ),
        Slider.adaptive(
          label: itemBuilder(selected),
          max: (values.length - 1).toDouble(),
          value: values.indexOf(selected).toDouble(),
          divisions: values.length - 1,
          onChanged: (value) => onSelect(
            values[value.toInt()],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              itemBuilder(values.first),
              style: context.textTheme.labelMedium.withGrayColor,
            ),
            Text(
              itemBuilder(values.last),
              style: Theme.of(context).textTheme.labelMedium.withGrayColor,
            ),
          ],
        ),
      ],
    );
  }
}

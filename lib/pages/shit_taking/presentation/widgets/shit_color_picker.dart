import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShitColorPicker extends ConsumerWidget {
  const ShitColorPicker({
    required this.selected,
    required this.onSelect,
    super.key,
  });

  final Color? selected;
  final void Function(Color?) onSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton.icon(
      style: ButtonStyle(
        side: const MaterialStatePropertyAll(BorderSide.none),
        padding: const MaterialStatePropertyAll(EdgeInsets.all(16)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      onPressed: () => showDialog<bool>(
        context: context,
        builder: (context) => _ColorPickerDialog(
          selected: selected ?? Colors.brown,
          onSelect: onSelect,
        ),
      ),
      icon: Container(
        decoration: BoxDecoration(
          color: selected ?? Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Theme.of(context).primaryColor),
        ),
        width: 40,
        height: 40,
        margin: const EdgeInsets.only(right: 20),
      ),
      label: const Text('Pick a color'),
    );
  }
}

final _currentColorProvider = StateProvider.family.autoDispose<Color?, Color?>(
  (ref, arg) => arg,
);

class _ColorPickerDialog extends ConsumerWidget {
  const _ColorPickerDialog({
    required this.onSelect,
    required this.selected,
  });

  final Color selected;
  final void Function(Color?) onSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentColor = ref.watch(_currentColorProvider(selected));
    return AlertDialog(
      scrollable: true,
      actions: [
        OutlinedButton(
          onPressed: () {
            onSelect(null);
            Navigator.pop(context, false);
          },
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () {
            onSelect(currentColor);
            Navigator.pop(context, true);
          },
          child: const Text('Confirm'),
        ),
      ],
      title: const Text('Pick a color'),
      content: ColorPicker(
        color: currentColor ?? Colors.brown,
        pickersEnabled: const <ColorPickerType, bool>{
          ColorPickerType.primary: false,
          ColorPickerType.accent: false,
          ColorPickerType.wheel: true,
        },
        onColorChanged: (value) => ref.read(_currentColorProvider(selected).notifier).state = value,
      ),
    );
  }
}

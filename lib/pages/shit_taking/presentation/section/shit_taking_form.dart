import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/shit_consistency_enum.dart';
import 'package:shatapp/domain/enum/shit_effort_enum.dart';
import 'package:shatapp/pages/shit_taking/controller/shit_taking_controller.dart';
import 'package:shatapp/pages/shit_taking/presentation/widgets/shit_color_picker.dart';
import 'package:shatapp/pages/shit_taking/presentation/widgets/shit_slider_picker.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class ShitTakingForm extends ConsumerWidget with UiUtility, UiDimension {
  const ShitTakingForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(shitTakingStateProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ShitSliderPicker<ShitEffort>(
          label: 'Rate effort',
          onSelect: (p0) => ref.read(shitTakingStateProvider.notifier).setEffort(p0),
          selected: state.effort,
          values: ShitEffort.values,
          itemBuilder: (p0) => p0.name.capitalize,
        ),
        largeDivider,
        ShitSliderPicker<ShitConsistency>(
          label: 'Rate consistency',
          onSelect: (p0) => ref.read(shitTakingStateProvider.notifier).setConsistency(p0),
          selected: state.consistency,
          values: ShitConsistency.values,
          itemBuilder: (p0) => p0.name.capitalize,
        ),
        largeDivider,
        TextField(
          decoration: InputDecoration(
            hintText: 'Note someting about your shit experience',
            label: const Text('Note'),
            alignLabelWithHint: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          onChanged: (value) => ref.read(shitTakingStateProvider.notifier).setNote(value),
          maxLength: 256,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: ShitColorPicker(
            selected: state.color != null ? Color(state.color!) : null,
            onSelect: (p0) => ref.read(shitTakingStateProvider.notifier).setColor(p0?.value),
          ),
        ),
        largeDivider,
        FilledButton(
          style: ButtonStyle(
            padding: MaterialStatePropertyAll(mediumPadding),
            textStyle: MaterialStatePropertyAll(
              Theme.of(context).textTheme.titleLarge,
            ),
          ),
          onPressed: () => ref.read(shitTakingStateProvider.notifier).createShit(),
          child: const Text(
            'Save your shit',
          ),
        ),
      ],
    );
  }
}

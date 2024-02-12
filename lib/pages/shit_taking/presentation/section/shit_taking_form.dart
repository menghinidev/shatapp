import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/shit_consistency_enum.dart';
import 'package:shatapp/domain/enum/shit_effort_enum.dart';
import 'package:shatapp/pages/shit_taking/controller/shit_taking_controller.dart';
import 'package:shatapp/pages/shit_taking/presentation/widgets/shit_color_picker.dart';
import 'package:shatapp/pages/shit_taking/presentation/widgets/shit_slider_picker.dart';
import 'package:shatapp/utils/snackbar/snackbar_service.dart';

class ShitTakingForm extends ConsumerWidget {
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
        separator,
        ShitSliderPicker<ShitConsistency>(
          label: 'Rate consistency',
          onSelect: (p0) => ref.read(shitTakingStateProvider.notifier).setConsistency(p0),
          selected: state.consistency,
          values: ShitConsistency.values,
          itemBuilder: (p0) => p0.name.capitalize,
        ),
        separator,
        TextField(
          decoration: InputDecoration(
            hintText: 'Add a note',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          onChanged: (value) => ref.read(shitTakingStateProvider.notifier).setNote(value),
          maxLength: 20,
        ),
        separator,
        Align(
          alignment: Alignment.bottomLeft,
          child: ShitColorPicker(
            selected: state.color != null ? Color(state.color!) : null,
            onSelect: (p0) => ref.read(shitTakingStateProvider.notifier).setColor(p0?.value),
          ),
        ),
        separator,
        FilledButton(
          style: ButtonStyle(
            padding: const MaterialStatePropertyAll(EdgeInsets.all(16)),
            textStyle: MaterialStatePropertyAll(
              Theme.of(context).textTheme.titleMedium,
            ),
          ),
          onPressed: () => ref.read(shitTakingStateProvider.notifier).createShit().then(
                (value) => ref.read(snackBarManagerProvider).showMessage(context, 'Shit flushed'),
              ),
          child: const Text(
            'Confirm',
          ),
        ),
      ],
    );
  }

  Widget get separator => const SizedBox(height: 24);
}

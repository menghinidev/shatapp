import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/shit_consistency_enum.dart';
import 'package:shatapp/domain/enum/shit_effort_enum.dart';
import 'package:shatapp/pages/shit_taking/controller/shit_taking_controller.dart';
import 'package:shatapp/pages/shit_taking/presentation/widgets/shit_slider_picker.dart';

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
          itemBuilder: (p0) => p0.name,
        ),
        ShitSliderPicker<ShitConsistency>(
          label: 'Rate effort',
          onSelect: (p0) => ref.read(shitTakingStateProvider.notifier).setConsistency(p0),
          selected: state.consistency,
          values: ShitConsistency.values,
          itemBuilder: (p0) => p0.name,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: FilledButton(
            onPressed: () => ref.read(shitTakingStateProvider.notifier).createShit(),
            child: const Text('Confirm'),
          ),
        ),
      ],
    );
  }
}

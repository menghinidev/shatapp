import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/pages/shit_taking/controller/shit_taking_controller.dart';
import 'package:shatapp/pages/shit_taking/presentation/widgets/shit_serverity_picker.dart';

class ShitTakingForm extends ConsumerWidget {
  const ShitTakingForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(shitTakingStateProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ShitSeverityPicker(
          onSelect: (p0) => ref.read(shitTakingStateProvider.notifier).setSeverity(p0),
          selected: state.severity,
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

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/repository/shit_team_repository.dart';
import 'package:shatapp/utils/logger/logger_manager.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class CreateShitTeamBottomSheet extends HookConsumerWidget with UiDimension, UiUtility, UiShape {
  CreateShitTeamBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controllerName = useTextEditingController();
    return BottomSheet(
      onClosing: () => ref.read(loggerManagerProvider).logMessage('Closing'),
      builder: (context) => Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SingleChildScrollView(
          padding: mediumPadding,
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Crea un nuovo team',
                  style: context.textTheme.headlineSmall,
                ),
                smallDivider,
                TextFormField(
                  controller: controllerName,
                  maxLength: 20,
                  decoration: const InputDecoration(
                    labelText: 'Nome del team',
                  ),
                ),
                smallDivider,
                ElevatedButton(
                  onPressed: () {
                    ref
                        .read(shitTeamRepositoryProvider)
                        .createShitTeam(name: controllerName.text)
                        .then((value) => ref.invalidate(myShitTeamsProvider));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: roundedShape,
                  ),
                  child: const Text('Crea'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

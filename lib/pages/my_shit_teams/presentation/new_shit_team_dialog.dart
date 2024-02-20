import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
import 'package:shatapp/domain/repository/team/shit_team_repository.dart';
import 'package:shatapp/domain/repository/user/firestore_user_repository.dart';
import 'package:shatapp/utils/logger/logger_manager.dart';
import 'package:shatapp/utils/provider_extension.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

final _shitTeamMembersProvider = StateProvider.autoDispose<Set<ShatAppUser>>((ref) {
  return <ShatAppUser>{};
});

class CreateShitTeamBottomSheet extends HookConsumerWidget with UiDimension, UiUtility, UiShape {
  CreateShitTeamBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controllerName = useTextEditingController();
    final selectedUsers = ref.watch(_shitTeamMembersProvider);
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
                mediumDivider,
                TextFormField(
                  controller: controllerName,
                  maxLength: 20,
                  decoration: const InputDecoration(
                    labelText: 'Nome del team',
                  ),
                ),
                smallDivider,
                const _ShitUsersDropdown(),
                smallDivider,
                _ShitTeamMembersBar(users: selectedUsers),
                mediumDivider,
                ElevatedButton(
                  onPressed: () => onCreate(context, ref, controllerName.text, selectedUsers),
                  style: ElevatedButton.styleFrom(
                    shape: mediumRoundedShape,
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

  Future<void> onCreate(
    BuildContext context,
    WidgetRef ref,
    String name,
    Set<ShatAppUser> members,
  ) {
    return ref
        .read(shitTeamRepositoryProvider)
        .createShitTeam(name: name, members: members.toList())
        .then((value) => ref.invalidate(myShitTeamsProvider))
        .then((value) => Navigator.pop(context));
  }
}

class _ShitUsersDropdown extends ConsumerWidget {
  const _ShitUsersDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(shitUsersProvider);
    final selectedUsers = ref.watch(_shitTeamMembersProvider);
    return users.loadUntil(
      data: (data) => DropdownButtonHideUnderline(
        child: DropdownButtonFormField<ShatAppUser>(
          hint: const Text('Select User'),
          disabledHint: const Text('Disabled (like you)'),
          style: context.textTheme.bodyLarge,
          icon: const Icon(Icons.people_rounded),
          items: data
              .map(
                (e) => DropdownMenuItem<ShatAppUser>(
                  value: e,
                  child: Text(e.name),
                ),
              )
              .toList(),
          onChanged: (user) {
            if (user != null) {
              ref.read(_shitTeamMembersProvider.notifier).state = {...selectedUsers, user};
            }
          },
        ),
      ),
    );
  }
}

class _ShitTeamMembersBar extends ConsumerWidget with UiDimension {
  const _ShitTeamMembersBar({
    required this.users,
    super.key,
  });

  final Set<ShatAppUser> users;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Wrap(
      spacing: UiDimension.smallSize,
      runSpacing: UiDimension.smallSize,
      children: [
        for (final user in users) _ShitTeamMemberChip(user: user),
      ],
    );
  }
}

class _ShitTeamMemberChip extends ConsumerWidget with UiShape {
  const _ShitTeamMemberChip({
    required this.user,
    super.key,
  });

  final ShatAppUser user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Chip(
      onDeleted: () =>
          ref.read(_shitTeamMembersProvider.notifier).state = ref.read(_shitTeamMembersProvider).difference({user}),
      shape: smallRoundedShape,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      label: Text(user.name.capitalize),
      labelStyle: context.textTheme.bodySmall?.copyWith(
        color: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/pages/shit_taking/presentation/section/shit_taking_form.dart';
import 'package:shatapp/utils/ui_utils/scroll_utility.dart';

class ShitTakingPage extends ConsumerWidget {
  const ShitTakingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New shit'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 50),
        child: CustomScrollConfiguration(
          child: SingleChildScrollView(child: ShitTakingForm()),
        ),
      ),
    );
  }
}

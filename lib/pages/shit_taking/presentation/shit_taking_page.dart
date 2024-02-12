import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/pages/shit_taking/presentation/section/shit_taking_form.dart';
import 'package:shatapp/utils/ui_utils/scroll_utility.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class ShitTakingPage extends ConsumerWidget with UiDimension, UiShape {
  const ShitTakingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollConfiguration(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar.large(
              title: Text('Take a shit'),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: mediumPadding,
                child: const ShitTakingForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

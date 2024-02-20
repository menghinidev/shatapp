import 'package:flutter/material.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class TextBanner extends StatelessWidget {
  const TextBanner({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: context.textTheme.titleLarge.withGrayColor,
      ),
    );
  }
}

class ComingSoonFeature extends StatelessWidget {
  const ComingSoonFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextBanner(text: 'Coming soon...');
  }
}

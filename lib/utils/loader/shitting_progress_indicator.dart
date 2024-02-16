import 'package:flutter/material.dart';
import 'package:shatapp/utils/ui_utils/ui_utility.dart';

class ShittingProgressIndicator extends StatefulWidget {
  const ShittingProgressIndicator({
    super.key,
    this.shitCount = 4,
  });

  final int shitCount;

  @override
  State<ShittingProgressIndicator> createState() => _ShittingProgressIndicatorState();
}

class _ShittingProgressIndicatorState extends State<ShittingProgressIndicator>
    with TickerProviderStateMixin, UiDimension {
  final double beginTween = 0;
  final double endTween = UiDimension.largeSize;

  late List<AnimationController> shitItemAnimationControllers;
  late List<Animation<double>> shitItemAnimations;

  @override
  void initState() {
    super.initState();
    shitItemAnimationControllers = List.generate(
      widget.shitCount,
      (index) => AnimationController(
        duration: const Duration(milliseconds: 250),
        vsync: this,
      ),
    );
    shitItemAnimations = shitItemAnimationControllers.indexed
        .map(
          (e) => Tween(begin: beginTween, end: endTween).animate(e.$2)
            ..addStatusListener(
              (status) {
                if (status == AnimationStatus.completed) {
                  e.$2.reverse();
                }
                if (e.$2 == shitItemAnimationControllers.last && status == AnimationStatus.dismissed) {
                  shitItemAnimationControllers.first.forward();
                }
                if (shitItemAnimations[e.$1].value > endTween / 2 && e.$1 < widget.shitCount - 1) {
                  shitItemAnimationControllers[e.$1 + 1].forward();
                }
              },
            ),
        )
        .toList();

    shitItemAnimationControllers.firstOrNull?.forward();
  }

  @override
  void dispose() {
    for (final controller in shitItemAnimationControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: endTween * 2,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: shitItemAnimations
            .map(
              (e) => _ShittingProgressIndicatorItem(
                listenable: e,
                height: endTween,
              ),
            )
            .toList(),
      ),
    );
  }
}

class _ShittingProgressIndicatorItem extends AnimatedWidget with UiDimension {
  const _ShittingProgressIndicatorItem({
    required super.listenable,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    final value = (listenable as Animation<double>).value / 2;
    return Container(
      height: height,
      padding: smallHorizontalPadding.copyWith(
        top: height - UiDimension.mediumSize - value,
        bottom: value,
      ),
      child: Image.asset(
        'assets/images/poo.png',
        color: Colors.black,
        width: UiDimension.mediumSize,
        height: UiDimension.mediumSize,
      ),
    );
  }
}

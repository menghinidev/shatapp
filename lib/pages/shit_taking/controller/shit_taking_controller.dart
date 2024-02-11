import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/pages/shit_taking/controller/state/shittakingstate.dart';

class ShitTakingController extends StateNotifier<ShitTakingState> {
  ShitTakingController() : super(ShitTakingState());
}

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/shit_consistency_enum.dart';
import 'package:shatapp/domain/enum/shit_effort_enum.dart';
import 'package:shatapp/domain/repository/i_shit_repository.dart';
import 'package:shatapp/domain/repository/mock_shit_repository.dart';
import 'package:shatapp/pages/shit_taking/controller/state/shittakingstate.dart';

final shitTakingStateProvider = StateNotifierProvider<ShitTakingController, ShitTakingState>((ref) {
  final repo = ref.read(mockShitRepository);
  return ShitTakingController(
    repository: repo,
  );
});

class ShitTakingController extends StateNotifier<ShitTakingState> {
  ShitTakingController({
    required this.repository,
  }) : super(
          ShitTakingState(
            effort: ShitEffort.medium,
            consistency: ShitConsistency.normal,
          ),
        );

  final ShitRepository repository;

  void setEffort(ShitEffort effort) {
    state = state.copyWith(effort: effort);
  }

  void setConsistency(ShitConsistency consistency) {
    state = state.copyWith(consistency: consistency);
  }

  Future<void> createShit() async {
    await repository.registerShit(
      effort: state.effort,
      consistency: state.consistency,
      note: state.note,
    );
  }
}

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/shit_severity_enum.dart';
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
            severity: ShitSeverity.normal,
          ),
        );

  final ShitRepository repository;

  void setSeverity(ShitSeverity severity) {
    state = state.copyWith(severity: severity);
  }

  Future<void> createShit() async {
    await repository.registerShit(
      severity: state.severity,
    );
  }
}

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/shit_consistency_enum.dart';
import 'package:shatapp/domain/enum/shit_effort_enum.dart';
import 'package:shatapp/domain/repository/firestore_repository.dart';
import 'package:shatapp/domain/repository/i_shit_repository.dart';
import 'package:shatapp/pages/dashboard/controller/dashboard_controller.dart';
import 'package:shatapp/pages/shit_taking/controller/state/shittakingstate.dart';
import 'package:shatapp/utils/dialog/dialog_manager.dart';
import 'package:shatapp/utils/router/routes/dashboard_route.dart';
import 'package:shatapp/utils/router/showcase_router.dart';

final shitTakingStateProvider = StateNotifierProvider<ShitTakingController, ShitTakingState>((ref) {
  final repo = ref.read(shitRepository);
  final dialogManager = ref.read(dialogManagerProvider);
  return ShitTakingController(
    repository: repo,
    dialogManager: dialogManager,
    onSuccess: () {
      ref.invalidate(dashboardProvider);
      ref.read(routerProvider).go(DashboardPageRoute.pagePath);
    },
  );
});

class ShitTakingController extends StateNotifier<ShitTakingState> {
  ShitTakingController({
    required this.repository,
    required this.dialogManager,
    required this.onSuccess,
  }) : super(
          ShitTakingState(
            effort: ShitEffort.medium,
            consistency: ShitConsistency.normal,
          ),
        );

  final ShitRepository repository;
  final DialogManager dialogManager;
  final void Function() onSuccess;

  void setEffort(ShitEffort effort) {
    state = state.copyWith(effort: effort);
  }

  void setConsistency(ShitConsistency consistency) {
    state = state.copyWith(consistency: consistency);
  }

  void setNote(String note) {
    state = state.copyWith(note: note.isNotEmpty ? note : null);
  }

  void setColor(int? color) {
    state = state.copyWith(color: color);
  }

  Future<void> createShit() async {
    try {
      await repository.registerShit(
        effort: state.effort,
        consistency: state.consistency,
        note: state.note,
      );
      onSuccess();
    } catch (e) {
      await dialogManager.showWarningDialog<void>(text: 'Error: $e');
    }
  }
}

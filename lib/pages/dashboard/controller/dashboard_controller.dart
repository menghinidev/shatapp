import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/model/stats/stats.dart';
import 'package:shatapp/domain/repository/firestore_repository.dart';

final dashboardProvider = FutureProvider<List<Shit>>((ref) async {
  final repo = ref.read(shitRepository);
  return repo.getShits();
});

final dashboardStatsStateProvider = FutureProvider<Stats>((ref) async {
  final repo = ref.read(shitRepository);
  return repo.getStats();
});

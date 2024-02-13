import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/repository/firestore_repository.dart';

final myShitProvider = FutureProvider<List<Shit>>((ref) async {
  final repo = ref.watch(shitRepository);
  return repo.getMyShitDiary();
});

final globalShitProvider = FutureProvider<List<Shit>>((ref) async {
  final repo = ref.watch(shitRepository);
  return repo.getGlobalShit();
});

import 'package:shatapp/domain/enum/shit_consistency_enum.dart';
import 'package:shatapp/domain/enum/shit_effort_enum.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/model/stats/stats.dart';

abstract class ShitRepository {
  Future<List<Shit>> getShits();
  Future<void> registerShit({
    required ShitEffort effort,
    required ShitConsistency consistency,
    String? note,
  });
  Future<Stats> getStats();
}
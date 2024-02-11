import 'package:shatapp/domain/enum/shit_severity_enum.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/model/stats/stats.dart';

abstract class ShitRepository {
  Future<List<Shit>> getShits();
  Future<void> registerShit({
    required ShitSeverity severity,
  });
  Future<Stats> getStats();
}

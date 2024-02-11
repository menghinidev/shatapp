import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shatapp/domain/enum/shit_consistency_enum.dart';
import 'package:shatapp/domain/enum/shit_effort_enum.dart';

part 'stats.freezed.dart';

@freezed
class Stats with _$Stats {
  factory Stats({
    required int totalCount,
    ShitEffort? averageEffort,
    ShitConsistency? averageConsistency,
    int? shittiestDayCount,
    DateTime? shittiestDay,
  }) = _Stats;
}

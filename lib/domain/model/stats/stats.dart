import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shatapp/domain/enum/shit_severity_enum.dart';

part 'stats.freezed.dart';

@freezed
class Stats with _$Stats {
  factory Stats({
    required int totalCount,
    ShitSeverity? averageSeverity,
    int? shittiestDayCount,
    DateTime? shittiestDay,
  }) = _Stats;
}

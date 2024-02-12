import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shatapp/domain/enum/shit_consistency_enum.dart';
import 'package:shatapp/domain/enum/shit_effort_enum.dart';
import 'package:shatapp/domain/model/shit_team/shitteam.dart';

part 'shittakingstate.freezed.dart';

@freezed
class ShitTakingState with _$ShitTakingState {
  factory ShitTakingState({
    required ShitEffort effort,
    required ShitConsistency consistency,
    String? note,
    int? color,
    ShitTeam? team,
  }) = _ShitTakingState;
}

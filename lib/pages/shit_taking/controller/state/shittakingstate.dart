import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shatapp/domain/enum/shit_severity_enum.dart';

part 'shittakingstate.freezed.dart';

@freezed
class ShitTakingState with _$ShitTakingState {
  factory ShitTakingState({
    required ShitSeverity severity,
  }) = _ShitTakingState;
}

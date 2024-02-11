import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shatapp/domain/enum/shit_severity_enum.dart';

part 'shit.freezed.dart';

@freezed
class Shit with _$Shit {
  factory Shit({
    required String id,
    required String userId,
    required DateTime creationDateTime,
    required ShitSeverity severity,
  }) = _Shit;
}

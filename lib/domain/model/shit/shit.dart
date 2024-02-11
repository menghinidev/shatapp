import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shatapp/domain/enum/shit_consistency_enum.dart';
import 'package:shatapp/domain/enum/shit_effort_enum.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';

part 'shit.freezed.dart';
part 'shit.g.dart';

mixin ShitDtoMapper {
  Shit mapFromDto(ShitDto dto) {
    return Shit(
      id: dto.id,
      consistency: dto.data.consistency,
      creationDateTime: dto.data.creationDateTime,
      effort: dto.data.effort,
      note: dto.data.note,
      user: dto.data.user,
    );
  }

  ShitDto mapDtoFromJson(String id, Map<String, dynamic> data) {
    return ShitDto(
      id: id,
      data: ShitDataDto.fromJson(data),
    );
  }
}

@freezed
class Shit with _$Shit {
  factory Shit({
    required String id,
    required DateTime creationDateTime,
    required ShitEffort effort,
    required ShitConsistency consistency,
    ShatAppUser? user,
    String? note,
  }) = _Shit;

  factory Shit.fromJson(Map<String, dynamic> json) => _$ShitFromJson(json);
}

@freezed
class ShitDto with _$ShitDto {
  factory ShitDto({
    required String id,
    required ShitDataDto data,
  }) = _ShitDto;

  factory ShitDto.fromJson(Map<String, dynamic> json) => _$ShitDtoFromJson(json);
}

@freezed
class ShitDataDto with _$ShitDataDto {
  factory ShitDataDto({
    required DateTime creationDateTime,
    required ShitEffort effort,
    required ShitConsistency consistency,
    ShatAppUser? user,
    String? note,
  }) = _ShitDataDto;

  factory ShitDataDto.fromJson(Map<String, dynamic> json) => _$ShitDataDtoFromJson(json);
}

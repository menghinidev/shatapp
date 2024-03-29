import 'package:freezed_annotation/freezed_annotation.dart';

part 'shitteam.freezed.dart';
part 'shitteam.g.dart';

mixin ShitTeamDtoMapper {
  ShitTeam mapShitTeamFromDto(ShitTeamDto dto) {
    return ShitTeam(
      id: dto.id,
      creator: dto.data.creator,
      members: dto.data.members,
      name: dto.data.name,
    );
  }

  ShitTeamDto mapShitTeamDtoFromJson(String id, Map<String, dynamic> data) {
    return ShitTeamDto(
      id: id,
      data: ShitTeamDtoData.fromJson(data),
    );
  }
}

@freezed
class ShitTeam with _$ShitTeam {
  factory ShitTeam({
    required String id,
    required String name,
    required String creator,
    required List<String> members,
  }) = _ShitTeam;

  factory ShitTeam.fromJson(Map<String, dynamic> json) => _$ShitTeamFromJson(json);
}

@freezed
class ShitTeamDto with _$ShitTeamDto {
  factory ShitTeamDto({
    required String id,
    required ShitTeamDtoData data,
  }) = _ShitTeamDto;

  factory ShitTeamDto.fromJson(Map<String, dynamic> json) => _$ShitTeamDtoFromJson(json);
}

@freezed
class ShitTeamDtoData with _$ShitTeamDtoData {
  @JsonSerializable(includeIfNull: false)
  factory ShitTeamDtoData({
    required String name,
    required String creator,
    required List<String> members,
  }) = _ShitTeamDtoData;

  factory ShitTeamDtoData.fromJson(Map<String, dynamic> json) => _$ShitTeamDtoDataFromJson(json);
}

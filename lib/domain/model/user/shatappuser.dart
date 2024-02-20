import 'package:freezed_annotation/freezed_annotation.dart';

part 'shatappuser.freezed.dart';
part 'shatappuser.g.dart';

@freezed
class ShatAppUser with _$ShatAppUser {
  @JsonSerializable(includeIfNull: false)
  factory ShatAppUser({
    required String id,
    required String name,
    String? imageUrl,
  }) = _ShatAppUser;

  factory ShatAppUser.fromJson(Map<String, dynamic> json) => _$ShatAppUserFromJson(json);
}

@freezed
class ShatAppUserDto with _$ShatAppUserDto {
  @JsonSerializable(includeIfNull: false)
  factory ShatAppUserDto({
    required String id,
    required ShatAppUserDataDto data,
  }) = _ShatAppUserDto;

  factory ShatAppUserDto.fromJson(Map<String, dynamic> json) => _$ShatAppUserDtoFromJson(json);
}

@freezed
class ShatAppUserDataDto with _$ShatAppUserDataDto {
  @JsonSerializable(includeIfNull: false)
  factory ShatAppUserDataDto({
    required String name,
    String? imageUrl,
  }) = _ShatAppUserDataDto;

  factory ShatAppUserDataDto.fromJson(Map<String, dynamic> json) => _$ShatAppUserDataDtoFromJson(json);
}

mixin UserDtoMapper {
  ShatAppUser mapUserFromDto(ShatAppUserDto dto) {
    return ShatAppUser(
      id: dto.id,
      name: dto.data.name,
      imageUrl: dto.data.imageUrl,
    );
  }

  ShatAppUserDto mapUserDtoFromJson(String id, Map<String, dynamic> data) {
    return ShatAppUserDto(
      id: id,
      data: ShatAppUserDataDto.fromJson(data),
    );
  }
}

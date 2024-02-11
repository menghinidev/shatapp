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

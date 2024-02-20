import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';

class ShatAppUserConverter implements JsonConverter<ShatAppUser, Map<String, dynamic>> {
  const ShatAppUserConverter();

  @override
  ShatAppUser fromJson(Map<String, dynamic> json) => ShatAppUser.fromJson(json);

  @override
  Map<String, dynamic> toJson(ShatAppUser user) => user.toJson();
}

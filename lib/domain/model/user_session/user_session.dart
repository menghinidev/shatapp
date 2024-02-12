import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shatapp/utils/freezed_converter/timestamp_converter.dart';

part 'user_session.freezed.dart';
part 'user_session.g.dart';

@freezed
class UserSession with _$UserSession {
  @JsonSerializable(includeIfNull: false)
  factory UserSession({
    required String id,
    @TimestampConverter() required DateTime lastOnlineDateTime,
    required bool online,
  }) = CurrentSession;

  factory UserSession.invalid() = InvalidSession;

  factory UserSession.fromJson(Map<String, dynamic> json) => _$UserSessionFromJson(json);
}

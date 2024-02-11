import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';

part 'authenticationstate.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  factory AuthenticationState.logged({
    required ShatAppUser user,
  }) = Logged;
  factory AuthenticationState.unknown() = Unknown;
}

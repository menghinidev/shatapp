import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticationstate.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  factory AuthenticationState.logged({
    required User user,
  }) = Logged;
  factory AuthenticationState.unknown() = Unknown;
}

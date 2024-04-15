// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticationstate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShatAppUser user) logged,
    required TResult Function() autenticating,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShatAppUser user)? logged,
    TResult? Function()? autenticating,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShatAppUser user)? logged,
    TResult Function()? autenticating,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Logged value) logged,
    required TResult Function(Autenticating value) autenticating,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Logged value)? logged,
    TResult? Function(Autenticating value)? autenticating,
    TResult? Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Logged value)? logged,
    TResult Function(Autenticating value)? autenticating,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoggedImplCopyWith<$Res> {
  factory _$$LoggedImplCopyWith(
          _$LoggedImpl value, $Res Function(_$LoggedImpl) then) =
      __$$LoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShatAppUser user});

  $ShatAppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoggedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$LoggedImpl>
    implements _$$LoggedImplCopyWith<$Res> {
  __$$LoggedImplCopyWithImpl(
      _$LoggedImpl _value, $Res Function(_$LoggedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoggedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ShatAppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ShatAppUserCopyWith<$Res> get user {
    return $ShatAppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LoggedImpl implements Logged {
  _$LoggedImpl({required this.user});

  @override
  final ShatAppUser user;

  @override
  String toString() {
    return 'AuthenticationState.logged(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedImplCopyWith<_$LoggedImpl> get copyWith =>
      __$$LoggedImplCopyWithImpl<_$LoggedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShatAppUser user) logged,
    required TResult Function() autenticating,
    required TResult Function() unknown,
  }) {
    return logged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShatAppUser user)? logged,
    TResult? Function()? autenticating,
    TResult? Function()? unknown,
  }) {
    return logged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShatAppUser user)? logged,
    TResult Function()? autenticating,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Logged value) logged,
    required TResult Function(Autenticating value) autenticating,
    required TResult Function(Unknown value) unknown,
  }) {
    return logged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Logged value)? logged,
    TResult? Function(Autenticating value)? autenticating,
    TResult? Function(Unknown value)? unknown,
  }) {
    return logged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Logged value)? logged,
    TResult Function(Autenticating value)? autenticating,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(this);
    }
    return orElse();
  }
}

abstract class Logged implements AuthenticationState {
  factory Logged({required final ShatAppUser user}) = _$LoggedImpl;

  ShatAppUser get user;
  @JsonKey(ignore: true)
  _$$LoggedImplCopyWith<_$LoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AutenticatingImplCopyWith<$Res> {
  factory _$$AutenticatingImplCopyWith(
          _$AutenticatingImpl value, $Res Function(_$AutenticatingImpl) then) =
      __$$AutenticatingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AutenticatingImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AutenticatingImpl>
    implements _$$AutenticatingImplCopyWith<$Res> {
  __$$AutenticatingImplCopyWithImpl(
      _$AutenticatingImpl _value, $Res Function(_$AutenticatingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AutenticatingImpl implements Autenticating {
  _$AutenticatingImpl();

  @override
  String toString() {
    return 'AuthenticationState.autenticating()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AutenticatingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShatAppUser user) logged,
    required TResult Function() autenticating,
    required TResult Function() unknown,
  }) {
    return autenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShatAppUser user)? logged,
    TResult? Function()? autenticating,
    TResult? Function()? unknown,
  }) {
    return autenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShatAppUser user)? logged,
    TResult Function()? autenticating,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (autenticating != null) {
      return autenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Logged value) logged,
    required TResult Function(Autenticating value) autenticating,
    required TResult Function(Unknown value) unknown,
  }) {
    return autenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Logged value)? logged,
    TResult? Function(Autenticating value)? autenticating,
    TResult? Function(Unknown value)? unknown,
  }) {
    return autenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Logged value)? logged,
    TResult Function(Autenticating value)? autenticating,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (autenticating != null) {
      return autenticating(this);
    }
    return orElse();
  }
}

abstract class Autenticating implements AuthenticationState {
  factory Autenticating() = _$AutenticatingImpl;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownImpl implements Unknown {
  _$UnknownImpl();

  @override
  String toString() {
    return 'AuthenticationState.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShatAppUser user) logged,
    required TResult Function() autenticating,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShatAppUser user)? logged,
    TResult? Function()? autenticating,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShatAppUser user)? logged,
    TResult Function()? autenticating,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Logged value) logged,
    required TResult Function(Autenticating value) autenticating,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Logged value)? logged,
    TResult? Function(Autenticating value)? autenticating,
    TResult? Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Logged value)? logged,
    TResult Function(Autenticating value)? autenticating,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements AuthenticationState {
  factory Unknown() = _$UnknownImpl;
}

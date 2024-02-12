// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSession _$UserSessionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return CurrentSession.fromJson(json);
    case 'invalid':
      return InvalidSession.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserSession',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserSession {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id,
            @TimestampConverter() DateTime lastOnlineDateTime, bool online)
        $default, {
    required TResult Function() invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id,
            @TimestampConverter() DateTime lastOnlineDateTime, bool online)?
        $default, {
    TResult? Function()? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id,
            @TimestampConverter() DateTime lastOnlineDateTime, bool online)?
        $default, {
    TResult Function()? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CurrentSession value) $default, {
    required TResult Function(InvalidSession value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CurrentSession value)? $default, {
    TResult? Function(InvalidSession value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CurrentSession value)? $default, {
    TResult Function(InvalidSession value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSessionCopyWith<$Res> {
  factory $UserSessionCopyWith(
          UserSession value, $Res Function(UserSession) then) =
      _$UserSessionCopyWithImpl<$Res, UserSession>;
}

/// @nodoc
class _$UserSessionCopyWithImpl<$Res, $Val extends UserSession>
    implements $UserSessionCopyWith<$Res> {
  _$UserSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CurrentSessionImplCopyWith<$Res> {
  factory _$$CurrentSessionImplCopyWith(_$CurrentSessionImpl value,
          $Res Function(_$CurrentSessionImpl) then) =
      __$$CurrentSessionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      @TimestampConverter() DateTime lastOnlineDateTime,
      bool online});
}

/// @nodoc
class __$$CurrentSessionImplCopyWithImpl<$Res>
    extends _$UserSessionCopyWithImpl<$Res, _$CurrentSessionImpl>
    implements _$$CurrentSessionImplCopyWith<$Res> {
  __$$CurrentSessionImplCopyWithImpl(
      _$CurrentSessionImpl _value, $Res Function(_$CurrentSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lastOnlineDateTime = null,
    Object? online = null,
  }) {
    return _then(_$CurrentSessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastOnlineDateTime: null == lastOnlineDateTime
          ? _value.lastOnlineDateTime
          : lastOnlineDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      online: null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$CurrentSessionImpl implements CurrentSession {
  _$CurrentSessionImpl(
      {required this.id,
      @TimestampConverter() required this.lastOnlineDateTime,
      required this.online,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$CurrentSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentSessionImplFromJson(json);

  @override
  final String id;
  @override
  @TimestampConverter()
  final DateTime lastOnlineDateTime;
  @override
  final bool online;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserSession(id: $id, lastOnlineDateTime: $lastOnlineDateTime, online: $online)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lastOnlineDateTime, lastOnlineDateTime) ||
                other.lastOnlineDateTime == lastOnlineDateTime) &&
            (identical(other.online, online) || other.online == online));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, lastOnlineDateTime, online);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentSessionImplCopyWith<_$CurrentSessionImpl> get copyWith =>
      __$$CurrentSessionImplCopyWithImpl<_$CurrentSessionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id,
            @TimestampConverter() DateTime lastOnlineDateTime, bool online)
        $default, {
    required TResult Function() invalid,
  }) {
    return $default(id, lastOnlineDateTime, online);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id,
            @TimestampConverter() DateTime lastOnlineDateTime, bool online)?
        $default, {
    TResult? Function()? invalid,
  }) {
    return $default?.call(id, lastOnlineDateTime, online);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id,
            @TimestampConverter() DateTime lastOnlineDateTime, bool online)?
        $default, {
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, lastOnlineDateTime, online);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CurrentSession value) $default, {
    required TResult Function(InvalidSession value) invalid,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CurrentSession value)? $default, {
    TResult? Function(InvalidSession value)? invalid,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CurrentSession value)? $default, {
    TResult Function(InvalidSession value)? invalid,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentSessionImplToJson(
      this,
    );
  }
}

abstract class CurrentSession implements UserSession {
  factory CurrentSession(
      {required final String id,
      @TimestampConverter() required final DateTime lastOnlineDateTime,
      required final bool online}) = _$CurrentSessionImpl;

  factory CurrentSession.fromJson(Map<String, dynamic> json) =
      _$CurrentSessionImpl.fromJson;

  String get id;
  @TimestampConverter()
  DateTime get lastOnlineDateTime;
  bool get online;
  @JsonKey(ignore: true)
  _$$CurrentSessionImplCopyWith<_$CurrentSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidSessionImplCopyWith<$Res> {
  factory _$$InvalidSessionImplCopyWith(_$InvalidSessionImpl value,
          $Res Function(_$InvalidSessionImpl) then) =
      __$$InvalidSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidSessionImplCopyWithImpl<$Res>
    extends _$UserSessionCopyWithImpl<$Res, _$InvalidSessionImpl>
    implements _$$InvalidSessionImplCopyWith<$Res> {
  __$$InvalidSessionImplCopyWithImpl(
      _$InvalidSessionImpl _value, $Res Function(_$InvalidSessionImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$InvalidSessionImpl implements InvalidSession {
  _$InvalidSessionImpl({final String? $type}) : $type = $type ?? 'invalid';

  factory _$InvalidSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvalidSessionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserSession.invalid()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidSessionImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id,
            @TimestampConverter() DateTime lastOnlineDateTime, bool online)
        $default, {
    required TResult Function() invalid,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id,
            @TimestampConverter() DateTime lastOnlineDateTime, bool online)?
        $default, {
    TResult? Function()? invalid,
  }) {
    return invalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id,
            @TimestampConverter() DateTime lastOnlineDateTime, bool online)?
        $default, {
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CurrentSession value) $default, {
    required TResult Function(InvalidSession value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CurrentSession value)? $default, {
    TResult? Function(InvalidSession value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CurrentSession value)? $default, {
    TResult Function(InvalidSession value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InvalidSessionImplToJson(
      this,
    );
  }
}

abstract class InvalidSession implements UserSession {
  factory InvalidSession() = _$InvalidSessionImpl;

  factory InvalidSession.fromJson(Map<String, dynamic> json) =
      _$InvalidSessionImpl.fromJson;
}

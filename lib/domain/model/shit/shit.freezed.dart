// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Shit {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get creationDateTime => throw _privateConstructorUsedError;
  ShitSeverity get severity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShitCopyWith<Shit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShitCopyWith<$Res> {
  factory $ShitCopyWith(Shit value, $Res Function(Shit) then) =
      _$ShitCopyWithImpl<$Res, Shit>;
  @useResult
  $Res call(
      {String id,
      String userId,
      DateTime creationDateTime,
      ShitSeverity severity});
}

/// @nodoc
class _$ShitCopyWithImpl<$Res, $Val extends Shit>
    implements $ShitCopyWith<$Res> {
  _$ShitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? creationDateTime = null,
    Object? severity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      creationDateTime: null == creationDateTime
          ? _value.creationDateTime
          : creationDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as ShitSeverity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShitImplCopyWith<$Res> implements $ShitCopyWith<$Res> {
  factory _$$ShitImplCopyWith(
          _$ShitImpl value, $Res Function(_$ShitImpl) then) =
      __$$ShitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      DateTime creationDateTime,
      ShitSeverity severity});
}

/// @nodoc
class __$$ShitImplCopyWithImpl<$Res>
    extends _$ShitCopyWithImpl<$Res, _$ShitImpl>
    implements _$$ShitImplCopyWith<$Res> {
  __$$ShitImplCopyWithImpl(_$ShitImpl _value, $Res Function(_$ShitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? creationDateTime = null,
    Object? severity = null,
  }) {
    return _then(_$ShitImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      creationDateTime: null == creationDateTime
          ? _value.creationDateTime
          : creationDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as ShitSeverity,
    ));
  }
}

/// @nodoc

class _$ShitImpl implements _Shit {
  _$ShitImpl(
      {required this.id,
      required this.userId,
      required this.creationDateTime,
      required this.severity});

  @override
  final String id;
  @override
  final String userId;
  @override
  final DateTime creationDateTime;
  @override
  final ShitSeverity severity;

  @override
  String toString() {
    return 'Shit(id: $id, userId: $userId, creationDateTime: $creationDateTime, severity: $severity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.creationDateTime, creationDateTime) ||
                other.creationDateTime == creationDateTime) &&
            (identical(other.severity, severity) ||
                other.severity == severity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, creationDateTime, severity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShitImplCopyWith<_$ShitImpl> get copyWith =>
      __$$ShitImplCopyWithImpl<_$ShitImpl>(this, _$identity);
}

abstract class _Shit implements Shit {
  factory _Shit(
      {required final String id,
      required final String userId,
      required final DateTime creationDateTime,
      required final ShitSeverity severity}) = _$ShitImpl;

  @override
  String get id;
  @override
  String get userId;
  @override
  DateTime get creationDateTime;
  @override
  ShitSeverity get severity;
  @override
  @JsonKey(ignore: true)
  _$$ShitImplCopyWith<_$ShitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

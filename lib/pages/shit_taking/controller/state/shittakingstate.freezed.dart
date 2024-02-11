// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shittakingstate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShitTakingState {
  ShitSeverity get severity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShitTakingStateCopyWith<ShitTakingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShitTakingStateCopyWith<$Res> {
  factory $ShitTakingStateCopyWith(
          ShitTakingState value, $Res Function(ShitTakingState) then) =
      _$ShitTakingStateCopyWithImpl<$Res, ShitTakingState>;
  @useResult
  $Res call({ShitSeverity severity});
}

/// @nodoc
class _$ShitTakingStateCopyWithImpl<$Res, $Val extends ShitTakingState>
    implements $ShitTakingStateCopyWith<$Res> {
  _$ShitTakingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? severity = null,
  }) {
    return _then(_value.copyWith(
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as ShitSeverity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShitTakingStateImplCopyWith<$Res>
    implements $ShitTakingStateCopyWith<$Res> {
  factory _$$ShitTakingStateImplCopyWith(_$ShitTakingStateImpl value,
          $Res Function(_$ShitTakingStateImpl) then) =
      __$$ShitTakingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShitSeverity severity});
}

/// @nodoc
class __$$ShitTakingStateImplCopyWithImpl<$Res>
    extends _$ShitTakingStateCopyWithImpl<$Res, _$ShitTakingStateImpl>
    implements _$$ShitTakingStateImplCopyWith<$Res> {
  __$$ShitTakingStateImplCopyWithImpl(
      _$ShitTakingStateImpl _value, $Res Function(_$ShitTakingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? severity = null,
  }) {
    return _then(_$ShitTakingStateImpl(
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as ShitSeverity,
    ));
  }
}

/// @nodoc

class _$ShitTakingStateImpl implements _ShitTakingState {
  _$ShitTakingStateImpl({required this.severity});

  @override
  final ShitSeverity severity;

  @override
  String toString() {
    return 'ShitTakingState(severity: $severity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShitTakingStateImpl &&
            (identical(other.severity, severity) ||
                other.severity == severity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, severity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShitTakingStateImplCopyWith<_$ShitTakingStateImpl> get copyWith =>
      __$$ShitTakingStateImplCopyWithImpl<_$ShitTakingStateImpl>(
          this, _$identity);
}

abstract class _ShitTakingState implements ShitTakingState {
  factory _ShitTakingState({required final ShitSeverity severity}) =
      _$ShitTakingStateImpl;

  @override
  ShitSeverity get severity;
  @override
  @JsonKey(ignore: true)
  _$$ShitTakingStateImplCopyWith<_$ShitTakingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

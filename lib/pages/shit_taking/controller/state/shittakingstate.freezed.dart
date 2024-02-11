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
  ShitEffort get effort => throw _privateConstructorUsedError;
  ShitConsistency get consistency => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  int? get color => throw _privateConstructorUsedError;

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
  $Res call(
      {ShitEffort effort,
      ShitConsistency consistency,
      String? note,
      int? color});
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
    Object? effort = null,
    Object? consistency = null,
    Object? note = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as ShitEffort,
      consistency: null == consistency
          ? _value.consistency
          : consistency // ignore: cast_nullable_to_non_nullable
              as ShitConsistency,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call(
      {ShitEffort effort,
      ShitConsistency consistency,
      String? note,
      int? color});
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
    Object? effort = null,
    Object? consistency = null,
    Object? note = freezed,
    Object? color = freezed,
  }) {
    return _then(_$ShitTakingStateImpl(
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as ShitEffort,
      consistency: null == consistency
          ? _value.consistency
          : consistency // ignore: cast_nullable_to_non_nullable
              as ShitConsistency,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ShitTakingStateImpl implements _ShitTakingState {
  _$ShitTakingStateImpl(
      {required this.effort, required this.consistency, this.note, this.color});

  @override
  final ShitEffort effort;
  @override
  final ShitConsistency consistency;
  @override
  final String? note;
  @override
  final int? color;

  @override
  String toString() {
    return 'ShitTakingState(effort: $effort, consistency: $consistency, note: $note, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShitTakingStateImpl &&
            (identical(other.effort, effort) || other.effort == effort) &&
            (identical(other.consistency, consistency) ||
                other.consistency == consistency) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, effort, consistency, note, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShitTakingStateImplCopyWith<_$ShitTakingStateImpl> get copyWith =>
      __$$ShitTakingStateImplCopyWithImpl<_$ShitTakingStateImpl>(
          this, _$identity);
}

abstract class _ShitTakingState implements ShitTakingState {
  factory _ShitTakingState(
      {required final ShitEffort effort,
      required final ShitConsistency consistency,
      final String? note,
      final int? color}) = _$ShitTakingStateImpl;

  @override
  ShitEffort get effort;
  @override
  ShitConsistency get consistency;
  @override
  String? get note;
  @override
  int? get color;
  @override
  @JsonKey(ignore: true)
  _$$ShitTakingStateImplCopyWith<_$ShitTakingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

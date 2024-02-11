// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Stats {
  int get totalCount => throw _privateConstructorUsedError;
  ShitEffort? get averageEffort => throw _privateConstructorUsedError;
  ShitConsistency? get averageConsistency => throw _privateConstructorUsedError;
  int? get shittiestDayCount => throw _privateConstructorUsedError;
  DateTime? get shittiestDay => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatsCopyWith<Stats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res, Stats>;
  @useResult
  $Res call(
      {int totalCount,
      ShitEffort? averageEffort,
      ShitConsistency? averageConsistency,
      int? shittiestDayCount,
      DateTime? shittiestDay});
}

/// @nodoc
class _$StatsCopyWithImpl<$Res, $Val extends Stats>
    implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? averageEffort = freezed,
    Object? averageConsistency = freezed,
    Object? shittiestDayCount = freezed,
    Object? shittiestDay = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      averageEffort: freezed == averageEffort
          ? _value.averageEffort
          : averageEffort // ignore: cast_nullable_to_non_nullable
              as ShitEffort?,
      averageConsistency: freezed == averageConsistency
          ? _value.averageConsistency
          : averageConsistency // ignore: cast_nullable_to_non_nullable
              as ShitConsistency?,
      shittiestDayCount: freezed == shittiestDayCount
          ? _value.shittiestDayCount
          : shittiestDayCount // ignore: cast_nullable_to_non_nullable
              as int?,
      shittiestDay: freezed == shittiestDay
          ? _value.shittiestDay
          : shittiestDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatsImplCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$$StatsImplCopyWith(
          _$StatsImpl value, $Res Function(_$StatsImpl) then) =
      __$$StatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalCount,
      ShitEffort? averageEffort,
      ShitConsistency? averageConsistency,
      int? shittiestDayCount,
      DateTime? shittiestDay});
}

/// @nodoc
class __$$StatsImplCopyWithImpl<$Res>
    extends _$StatsCopyWithImpl<$Res, _$StatsImpl>
    implements _$$StatsImplCopyWith<$Res> {
  __$$StatsImplCopyWithImpl(
      _$StatsImpl _value, $Res Function(_$StatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? averageEffort = freezed,
    Object? averageConsistency = freezed,
    Object? shittiestDayCount = freezed,
    Object? shittiestDay = freezed,
  }) {
    return _then(_$StatsImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      averageEffort: freezed == averageEffort
          ? _value.averageEffort
          : averageEffort // ignore: cast_nullable_to_non_nullable
              as ShitEffort?,
      averageConsistency: freezed == averageConsistency
          ? _value.averageConsistency
          : averageConsistency // ignore: cast_nullable_to_non_nullable
              as ShitConsistency?,
      shittiestDayCount: freezed == shittiestDayCount
          ? _value.shittiestDayCount
          : shittiestDayCount // ignore: cast_nullable_to_non_nullable
              as int?,
      shittiestDay: freezed == shittiestDay
          ? _value.shittiestDay
          : shittiestDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$StatsImpl implements _Stats {
  _$StatsImpl(
      {required this.totalCount,
      this.averageEffort,
      this.averageConsistency,
      this.shittiestDayCount,
      this.shittiestDay});

  @override
  final int totalCount;
  @override
  final ShitEffort? averageEffort;
  @override
  final ShitConsistency? averageConsistency;
  @override
  final int? shittiestDayCount;
  @override
  final DateTime? shittiestDay;

  @override
  String toString() {
    return 'Stats(totalCount: $totalCount, averageEffort: $averageEffort, averageConsistency: $averageConsistency, shittiestDayCount: $shittiestDayCount, shittiestDay: $shittiestDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.averageEffort, averageEffort) ||
                other.averageEffort == averageEffort) &&
            (identical(other.averageConsistency, averageConsistency) ||
                other.averageConsistency == averageConsistency) &&
            (identical(other.shittiestDayCount, shittiestDayCount) ||
                other.shittiestDayCount == shittiestDayCount) &&
            (identical(other.shittiestDay, shittiestDay) ||
                other.shittiestDay == shittiestDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalCount, averageEffort,
      averageConsistency, shittiestDayCount, shittiestDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsImplCopyWith<_$StatsImpl> get copyWith =>
      __$$StatsImplCopyWithImpl<_$StatsImpl>(this, _$identity);
}

abstract class _Stats implements Stats {
  factory _Stats(
      {required final int totalCount,
      final ShitEffort? averageEffort,
      final ShitConsistency? averageConsistency,
      final int? shittiestDayCount,
      final DateTime? shittiestDay}) = _$StatsImpl;

  @override
  int get totalCount;
  @override
  ShitEffort? get averageEffort;
  @override
  ShitConsistency? get averageConsistency;
  @override
  int? get shittiestDayCount;
  @override
  DateTime? get shittiestDay;
  @override
  @JsonKey(ignore: true)
  _$$StatsImplCopyWith<_$StatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

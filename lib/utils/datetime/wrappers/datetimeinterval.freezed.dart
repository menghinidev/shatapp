// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datetimeinterval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DateTimeInterval {
  DateTime? get from => throw _privateConstructorUsedError;
  DateTime? get to => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DateTimeIntervalCopyWith<DateTimeInterval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateTimeIntervalCopyWith<$Res> {
  factory $DateTimeIntervalCopyWith(
          DateTimeInterval value, $Res Function(DateTimeInterval) then) =
      _$DateTimeIntervalCopyWithImpl<$Res, DateTimeInterval>;
  @useResult
  $Res call({DateTime? from, DateTime? to});
}

/// @nodoc
class _$DateTimeIntervalCopyWithImpl<$Res, $Val extends DateTimeInterval>
    implements $DateTimeIntervalCopyWith<$Res> {
  _$DateTimeIntervalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateTimeIntervalImplCopyWith<$Res>
    implements $DateTimeIntervalCopyWith<$Res> {
  factory _$$DateTimeIntervalImplCopyWith(_$DateTimeIntervalImpl value,
          $Res Function(_$DateTimeIntervalImpl) then) =
      __$$DateTimeIntervalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? from, DateTime? to});
}

/// @nodoc
class __$$DateTimeIntervalImplCopyWithImpl<$Res>
    extends _$DateTimeIntervalCopyWithImpl<$Res, _$DateTimeIntervalImpl>
    implements _$$DateTimeIntervalImplCopyWith<$Res> {
  __$$DateTimeIntervalImplCopyWithImpl(_$DateTimeIntervalImpl _value,
      $Res Function(_$DateTimeIntervalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$DateTimeIntervalImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$DateTimeIntervalImpl implements _DateTimeInterval {
  _$DateTimeIntervalImpl({this.from, this.to});

  @override
  final DateTime? from;
  @override
  final DateTime? to;

  @override
  String toString() {
    return 'DateTimeInterval(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTimeIntervalImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateTimeIntervalImplCopyWith<_$DateTimeIntervalImpl> get copyWith =>
      __$$DateTimeIntervalImplCopyWithImpl<_$DateTimeIntervalImpl>(
          this, _$identity);
}

abstract class _DateTimeInterval implements DateTimeInterval {
  factory _DateTimeInterval({final DateTime? from, final DateTime? to}) =
      _$DateTimeIntervalImpl;

  @override
  DateTime? get from;
  @override
  DateTime? get to;
  @override
  @JsonKey(ignore: true)
  _$$DateTimeIntervalImplCopyWith<_$DateTimeIntervalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimeOfDayInterval {
  TimeOfDay? get from => throw _privateConstructorUsedError;
  TimeOfDay? get to => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeOfDayIntervalCopyWith<TimeOfDayInterval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeOfDayIntervalCopyWith<$Res> {
  factory $TimeOfDayIntervalCopyWith(
          TimeOfDayInterval value, $Res Function(TimeOfDayInterval) then) =
      _$TimeOfDayIntervalCopyWithImpl<$Res, TimeOfDayInterval>;
  @useResult
  $Res call({TimeOfDay? from, TimeOfDay? to});
}

/// @nodoc
class _$TimeOfDayIntervalCopyWithImpl<$Res, $Val extends TimeOfDayInterval>
    implements $TimeOfDayIntervalCopyWith<$Res> {
  _$TimeOfDayIntervalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeOfDayIntervalImplCopyWith<$Res>
    implements $TimeOfDayIntervalCopyWith<$Res> {
  factory _$$TimeOfDayIntervalImplCopyWith(_$TimeOfDayIntervalImpl value,
          $Res Function(_$TimeOfDayIntervalImpl) then) =
      __$$TimeOfDayIntervalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TimeOfDay? from, TimeOfDay? to});
}

/// @nodoc
class __$$TimeOfDayIntervalImplCopyWithImpl<$Res>
    extends _$TimeOfDayIntervalCopyWithImpl<$Res, _$TimeOfDayIntervalImpl>
    implements _$$TimeOfDayIntervalImplCopyWith<$Res> {
  __$$TimeOfDayIntervalImplCopyWithImpl(_$TimeOfDayIntervalImpl _value,
      $Res Function(_$TimeOfDayIntervalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$TimeOfDayIntervalImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ));
  }
}

/// @nodoc

class _$TimeOfDayIntervalImpl implements _TimeOfDayInterval {
  _$TimeOfDayIntervalImpl({this.from, this.to});

  @override
  final TimeOfDay? from;
  @override
  final TimeOfDay? to;

  @override
  String toString() {
    return 'TimeOfDayInterval(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeOfDayIntervalImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeOfDayIntervalImplCopyWith<_$TimeOfDayIntervalImpl> get copyWith =>
      __$$TimeOfDayIntervalImplCopyWithImpl<_$TimeOfDayIntervalImpl>(
          this, _$identity);
}

abstract class _TimeOfDayInterval implements TimeOfDayInterval {
  factory _TimeOfDayInterval({final TimeOfDay? from, final TimeOfDay? to}) =
      _$TimeOfDayIntervalImpl;

  @override
  TimeOfDay? get from;
  @override
  TimeOfDay? get to;
  @override
  @JsonKey(ignore: true)
  _$$TimeOfDayIntervalImplCopyWith<_$TimeOfDayIntervalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

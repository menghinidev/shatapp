// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grid_cell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GridCell _$GridCellFromJson(Map<String, dynamic> json) {
  return _GridCell.fromJson(json);
}

/// @nodoc
mixin _$GridCell {
  int get xAxis => throw _privateConstructorUsedError;
  int get yAxis => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GridCellCopyWith<GridCell> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GridCellCopyWith<$Res> {
  factory $GridCellCopyWith(GridCell value, $Res Function(GridCell) then) =
      _$GridCellCopyWithImpl<$Res, GridCell>;
  @useResult
  $Res call({int xAxis, int yAxis});
}

/// @nodoc
class _$GridCellCopyWithImpl<$Res, $Val extends GridCell>
    implements $GridCellCopyWith<$Res> {
  _$GridCellCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xAxis = null,
    Object? yAxis = null,
  }) {
    return _then(_value.copyWith(
      xAxis: null == xAxis
          ? _value.xAxis
          : xAxis // ignore: cast_nullable_to_non_nullable
              as int,
      yAxis: null == yAxis
          ? _value.yAxis
          : yAxis // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GridCellImplCopyWith<$Res>
    implements $GridCellCopyWith<$Res> {
  factory _$$GridCellImplCopyWith(
          _$GridCellImpl value, $Res Function(_$GridCellImpl) then) =
      __$$GridCellImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int xAxis, int yAxis});
}

/// @nodoc
class __$$GridCellImplCopyWithImpl<$Res>
    extends _$GridCellCopyWithImpl<$Res, _$GridCellImpl>
    implements _$$GridCellImplCopyWith<$Res> {
  __$$GridCellImplCopyWithImpl(
      _$GridCellImpl _value, $Res Function(_$GridCellImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xAxis = null,
    Object? yAxis = null,
  }) {
    return _then(_$GridCellImpl(
      xAxis: null == xAxis
          ? _value.xAxis
          : xAxis // ignore: cast_nullable_to_non_nullable
              as int,
      yAxis: null == yAxis
          ? _value.yAxis
          : yAxis // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GridCellImpl implements _GridCell {
  _$GridCellImpl({required this.xAxis, required this.yAxis});

  factory _$GridCellImpl.fromJson(Map<String, dynamic> json) =>
      _$$GridCellImplFromJson(json);

  @override
  final int xAxis;
  @override
  final int yAxis;

  @override
  String toString() {
    return 'GridCell(xAxis: $xAxis, yAxis: $yAxis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GridCellImpl &&
            (identical(other.xAxis, xAxis) || other.xAxis == xAxis) &&
            (identical(other.yAxis, yAxis) || other.yAxis == yAxis));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, xAxis, yAxis);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GridCellImplCopyWith<_$GridCellImpl> get copyWith =>
      __$$GridCellImplCopyWithImpl<_$GridCellImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GridCellImplToJson(
      this,
    );
  }
}

abstract class _GridCell implements GridCell {
  factory _GridCell({required final int xAxis, required final int yAxis}) =
      _$GridCellImpl;

  factory _GridCell.fromJson(Map<String, dynamic> json) =
      _$GridCellImpl.fromJson;

  @override
  int get xAxis;
  @override
  int get yAxis;
  @override
  @JsonKey(ignore: true)
  _$$GridCellImplCopyWith<_$GridCellImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

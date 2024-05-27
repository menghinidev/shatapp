// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snake_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SnakeBody _$SnakeBodyFromJson(Map<String, dynamic> json) {
  return _SnakeBody.fromJson(json);
}

/// @nodoc
mixin _$SnakeBody {
  @GridCellConverter()
  GridCell get gridCoordinate => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnakeBodyCopyWith<SnakeBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnakeBodyCopyWith<$Res> {
  factory $SnakeBodyCopyWith(SnakeBody value, $Res Function(SnakeBody) then) =
      _$SnakeBodyCopyWithImpl<$Res, SnakeBody>;
  @useResult
  $Res call({@GridCellConverter() GridCell gridCoordinate, int order});

  $GridCellCopyWith<$Res> get gridCoordinate;
}

/// @nodoc
class _$SnakeBodyCopyWithImpl<$Res, $Val extends SnakeBody>
    implements $SnakeBodyCopyWith<$Res> {
  _$SnakeBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gridCoordinate = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      gridCoordinate: null == gridCoordinate
          ? _value.gridCoordinate
          : gridCoordinate // ignore: cast_nullable_to_non_nullable
              as GridCell,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GridCellCopyWith<$Res> get gridCoordinate {
    return $GridCellCopyWith<$Res>(_value.gridCoordinate, (value) {
      return _then(_value.copyWith(gridCoordinate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SnakeBodyImplCopyWith<$Res>
    implements $SnakeBodyCopyWith<$Res> {
  factory _$$SnakeBodyImplCopyWith(
          _$SnakeBodyImpl value, $Res Function(_$SnakeBodyImpl) then) =
      __$$SnakeBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@GridCellConverter() GridCell gridCoordinate, int order});

  @override
  $GridCellCopyWith<$Res> get gridCoordinate;
}

/// @nodoc
class __$$SnakeBodyImplCopyWithImpl<$Res>
    extends _$SnakeBodyCopyWithImpl<$Res, _$SnakeBodyImpl>
    implements _$$SnakeBodyImplCopyWith<$Res> {
  __$$SnakeBodyImplCopyWithImpl(
      _$SnakeBodyImpl _value, $Res Function(_$SnakeBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gridCoordinate = null,
    Object? order = null,
  }) {
    return _then(_$SnakeBodyImpl(
      gridCoordinate: null == gridCoordinate
          ? _value.gridCoordinate
          : gridCoordinate // ignore: cast_nullable_to_non_nullable
              as GridCell,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnakeBodyImpl implements _SnakeBody {
  _$SnakeBodyImpl(
      {@GridCellConverter() required this.gridCoordinate, required this.order});

  factory _$SnakeBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnakeBodyImplFromJson(json);

  @override
  @GridCellConverter()
  final GridCell gridCoordinate;
  @override
  final int order;

  @override
  String toString() {
    return 'SnakeBody(gridCoordinate: $gridCoordinate, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnakeBodyImpl &&
            (identical(other.gridCoordinate, gridCoordinate) ||
                other.gridCoordinate == gridCoordinate) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gridCoordinate, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnakeBodyImplCopyWith<_$SnakeBodyImpl> get copyWith =>
      __$$SnakeBodyImplCopyWithImpl<_$SnakeBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnakeBodyImplToJson(
      this,
    );
  }
}

abstract class _SnakeBody implements SnakeBody {
  factory _SnakeBody(
      {@GridCellConverter() required final GridCell gridCoordinate,
      required final int order}) = _$SnakeBodyImpl;

  factory _SnakeBody.fromJson(Map<String, dynamic> json) =
      _$SnakeBodyImpl.fromJson;

  @override
  @GridCellConverter()
  GridCell get gridCoordinate;
  @override
  int get order;
  @override
  @JsonKey(ignore: true)
  _$$SnakeBodyImplCopyWith<_$SnakeBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

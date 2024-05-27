// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snake_game_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SnakeGameData _$SnakeGameDataFromJson(Map<String, dynamic> json) {
  return _SnakeGameData.fromJson(json);
}

/// @nodoc
mixin _$SnakeGameData {
  @SnakeBodyConverter()
  List<SnakeBody> get snake => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnakeGameDataCopyWith<SnakeGameData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnakeGameDataCopyWith<$Res> {
  factory $SnakeGameDataCopyWith(
          SnakeGameData value, $Res Function(SnakeGameData) then) =
      _$SnakeGameDataCopyWithImpl<$Res, SnakeGameData>;
  @useResult
  $Res call({@SnakeBodyConverter() List<SnakeBody> snake});
}

/// @nodoc
class _$SnakeGameDataCopyWithImpl<$Res, $Val extends SnakeGameData>
    implements $SnakeGameDataCopyWith<$Res> {
  _$SnakeGameDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snake = null,
  }) {
    return _then(_value.copyWith(
      snake: null == snake
          ? _value.snake
          : snake // ignore: cast_nullable_to_non_nullable
              as List<SnakeBody>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnakeGameDataImplCopyWith<$Res>
    implements $SnakeGameDataCopyWith<$Res> {
  factory _$$SnakeGameDataImplCopyWith(
          _$SnakeGameDataImpl value, $Res Function(_$SnakeGameDataImpl) then) =
      __$$SnakeGameDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@SnakeBodyConverter() List<SnakeBody> snake});
}

/// @nodoc
class __$$SnakeGameDataImplCopyWithImpl<$Res>
    extends _$SnakeGameDataCopyWithImpl<$Res, _$SnakeGameDataImpl>
    implements _$$SnakeGameDataImplCopyWith<$Res> {
  __$$SnakeGameDataImplCopyWithImpl(
      _$SnakeGameDataImpl _value, $Res Function(_$SnakeGameDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snake = null,
  }) {
    return _then(_$SnakeGameDataImpl(
      snake: null == snake
          ? _value._snake
          : snake // ignore: cast_nullable_to_non_nullable
              as List<SnakeBody>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnakeGameDataImpl implements _SnakeGameData {
  _$SnakeGameDataImpl(
      {@SnakeBodyConverter() required final List<SnakeBody> snake})
      : _snake = snake;

  factory _$SnakeGameDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnakeGameDataImplFromJson(json);

  final List<SnakeBody> _snake;
  @override
  @SnakeBodyConverter()
  List<SnakeBody> get snake {
    if (_snake is EqualUnmodifiableListView) return _snake;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snake);
  }

  @override
  String toString() {
    return 'SnakeGameData(snake: $snake)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnakeGameDataImpl &&
            const DeepCollectionEquality().equals(other._snake, _snake));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_snake));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnakeGameDataImplCopyWith<_$SnakeGameDataImpl> get copyWith =>
      __$$SnakeGameDataImplCopyWithImpl<_$SnakeGameDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnakeGameDataImplToJson(
      this,
    );
  }
}

abstract class _SnakeGameData implements SnakeGameData {
  factory _SnakeGameData(
          {@SnakeBodyConverter() required final List<SnakeBody> snake}) =
      _$SnakeGameDataImpl;

  factory _SnakeGameData.fromJson(Map<String, dynamic> json) =
      _$SnakeGameDataImpl.fromJson;

  @override
  @SnakeBodyConverter()
  List<SnakeBody> get snake;
  @override
  @JsonKey(ignore: true)
  _$$SnakeGameDataImplCopyWith<_$SnakeGameDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

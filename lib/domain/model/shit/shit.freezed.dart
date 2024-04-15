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
  DateTime get creationDateTime => throw _privateConstructorUsedError;
  ShitEffort get effort => throw _privateConstructorUsedError;
  ShitConsistency get consistency => throw _privateConstructorUsedError;
  Map<ShitReaction, List<String>>? get reactions =>
      throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get teamId => throw _privateConstructorUsedError;

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
      DateTime creationDateTime,
      ShitEffort effort,
      ShitConsistency consistency,
      Map<ShitReaction, List<String>>? reactions,
      String? user,
      String? note,
      String? color,
      String? teamId});
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
    Object? creationDateTime = null,
    Object? effort = null,
    Object? consistency = null,
    Object? reactions = freezed,
    Object? user = freezed,
    Object? note = freezed,
    Object? color = freezed,
    Object? teamId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationDateTime: null == creationDateTime
          ? _value.creationDateTime
          : creationDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as ShitEffort,
      consistency: null == consistency
          ? _value.consistency
          : consistency // ignore: cast_nullable_to_non_nullable
              as ShitConsistency,
      reactions: freezed == reactions
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Map<ShitReaction, List<String>>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      teamId: freezed == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      DateTime creationDateTime,
      ShitEffort effort,
      ShitConsistency consistency,
      Map<ShitReaction, List<String>>? reactions,
      String? user,
      String? note,
      String? color,
      String? teamId});
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
    Object? creationDateTime = null,
    Object? effort = null,
    Object? consistency = null,
    Object? reactions = freezed,
    Object? user = freezed,
    Object? note = freezed,
    Object? color = freezed,
    Object? teamId = freezed,
  }) {
    return _then(_$ShitImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationDateTime: null == creationDateTime
          ? _value.creationDateTime
          : creationDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as ShitEffort,
      consistency: null == consistency
          ? _value.consistency
          : consistency // ignore: cast_nullable_to_non_nullable
              as ShitConsistency,
      reactions: freezed == reactions
          ? _value._reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Map<ShitReaction, List<String>>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      teamId: freezed == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ShitImpl implements _Shit {
  _$ShitImpl(
      {required this.id,
      required this.creationDateTime,
      required this.effort,
      required this.consistency,
      final Map<ShitReaction, List<String>>? reactions,
      this.user,
      this.note,
      this.color,
      this.teamId})
      : _reactions = reactions;

  @override
  final String id;
  @override
  final DateTime creationDateTime;
  @override
  final ShitEffort effort;
  @override
  final ShitConsistency consistency;
  final Map<ShitReaction, List<String>>? _reactions;
  @override
  Map<ShitReaction, List<String>>? get reactions {
    final value = _reactions;
    if (value == null) return null;
    if (_reactions is EqualUnmodifiableMapView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? user;
  @override
  final String? note;
  @override
  final String? color;
  @override
  final String? teamId;

  @override
  String toString() {
    return 'Shit(id: $id, creationDateTime: $creationDateTime, effort: $effort, consistency: $consistency, reactions: $reactions, user: $user, note: $note, color: $color, teamId: $teamId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationDateTime, creationDateTime) ||
                other.creationDateTime == creationDateTime) &&
            (identical(other.effort, effort) || other.effort == effort) &&
            (identical(other.consistency, consistency) ||
                other.consistency == consistency) &&
            const DeepCollectionEquality()
                .equals(other._reactions, _reactions) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.teamId, teamId) || other.teamId == teamId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      creationDateTime,
      effort,
      consistency,
      const DeepCollectionEquality().hash(_reactions),
      user,
      note,
      color,
      teamId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShitImplCopyWith<_$ShitImpl> get copyWith =>
      __$$ShitImplCopyWithImpl<_$ShitImpl>(this, _$identity);
}

abstract class _Shit implements Shit {
  factory _Shit(
      {required final String id,
      required final DateTime creationDateTime,
      required final ShitEffort effort,
      required final ShitConsistency consistency,
      final Map<ShitReaction, List<String>>? reactions,
      final String? user,
      final String? note,
      final String? color,
      final String? teamId}) = _$ShitImpl;

  @override
  String get id;
  @override
  DateTime get creationDateTime;
  @override
  ShitEffort get effort;
  @override
  ShitConsistency get consistency;
  @override
  Map<ShitReaction, List<String>>? get reactions;
  @override
  String? get user;
  @override
  String? get note;
  @override
  String? get color;
  @override
  String? get teamId;
  @override
  @JsonKey(ignore: true)
  _$$ShitImplCopyWith<_$ShitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShitDto _$ShitDtoFromJson(Map<String, dynamic> json) {
  return _ShitDto.fromJson(json);
}

/// @nodoc
mixin _$ShitDto {
  String get id => throw _privateConstructorUsedError;
  ShitDataDto get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShitDtoCopyWith<ShitDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShitDtoCopyWith<$Res> {
  factory $ShitDtoCopyWith(ShitDto value, $Res Function(ShitDto) then) =
      _$ShitDtoCopyWithImpl<$Res, ShitDto>;
  @useResult
  $Res call({String id, ShitDataDto data});

  $ShitDataDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$ShitDtoCopyWithImpl<$Res, $Val extends ShitDto>
    implements $ShitDtoCopyWith<$Res> {
  _$ShitDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ShitDataDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShitDataDtoCopyWith<$Res> get data {
    return $ShitDataDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShitDtoImplCopyWith<$Res> implements $ShitDtoCopyWith<$Res> {
  factory _$$ShitDtoImplCopyWith(
          _$ShitDtoImpl value, $Res Function(_$ShitDtoImpl) then) =
      __$$ShitDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, ShitDataDto data});

  @override
  $ShitDataDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$ShitDtoImplCopyWithImpl<$Res>
    extends _$ShitDtoCopyWithImpl<$Res, _$ShitDtoImpl>
    implements _$$ShitDtoImplCopyWith<$Res> {
  __$$ShitDtoImplCopyWithImpl(
      _$ShitDtoImpl _value, $Res Function(_$ShitDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_$ShitDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ShitDataDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShitDtoImpl implements _ShitDto {
  _$ShitDtoImpl({required this.id, required this.data});

  factory _$ShitDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShitDtoImplFromJson(json);

  @override
  final String id;
  @override
  final ShitDataDto data;

  @override
  String toString() {
    return 'ShitDto(id: $id, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShitDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShitDtoImplCopyWith<_$ShitDtoImpl> get copyWith =>
      __$$ShitDtoImplCopyWithImpl<_$ShitDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShitDtoImplToJson(
      this,
    );
  }
}

abstract class _ShitDto implements ShitDto {
  factory _ShitDto(
      {required final String id,
      required final ShitDataDto data}) = _$ShitDtoImpl;

  factory _ShitDto.fromJson(Map<String, dynamic> json) = _$ShitDtoImpl.fromJson;

  @override
  String get id;
  @override
  ShitDataDto get data;
  @override
  @JsonKey(ignore: true)
  _$$ShitDtoImplCopyWith<_$ShitDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShitDataDto _$ShitDataDtoFromJson(Map<String, dynamic> json) {
  return _ShitDataDto.fromJson(json);
}

/// @nodoc
mixin _$ShitDataDto {
  DateTime get creationDateTime => throw _privateConstructorUsedError;
  ShitEffort get effort => throw _privateConstructorUsedError;
  ShitConsistency get consistency => throw _privateConstructorUsedError;
  Map<ShitReaction, List<String>>? get reactions =>
      throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get team => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShitDataDtoCopyWith<ShitDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShitDataDtoCopyWith<$Res> {
  factory $ShitDataDtoCopyWith(
          ShitDataDto value, $Res Function(ShitDataDto) then) =
      _$ShitDataDtoCopyWithImpl<$Res, ShitDataDto>;
  @useResult
  $Res call(
      {DateTime creationDateTime,
      ShitEffort effort,
      ShitConsistency consistency,
      Map<ShitReaction, List<String>>? reactions,
      String? user,
      String? note,
      String? color,
      String? team});
}

/// @nodoc
class _$ShitDataDtoCopyWithImpl<$Res, $Val extends ShitDataDto>
    implements $ShitDataDtoCopyWith<$Res> {
  _$ShitDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creationDateTime = null,
    Object? effort = null,
    Object? consistency = null,
    Object? reactions = freezed,
    Object? user = freezed,
    Object? note = freezed,
    Object? color = freezed,
    Object? team = freezed,
  }) {
    return _then(_value.copyWith(
      creationDateTime: null == creationDateTime
          ? _value.creationDateTime
          : creationDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as ShitEffort,
      consistency: null == consistency
          ? _value.consistency
          : consistency // ignore: cast_nullable_to_non_nullable
              as ShitConsistency,
      reactions: freezed == reactions
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Map<ShitReaction, List<String>>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShitDataDtoImplCopyWith<$Res>
    implements $ShitDataDtoCopyWith<$Res> {
  factory _$$ShitDataDtoImplCopyWith(
          _$ShitDataDtoImpl value, $Res Function(_$ShitDataDtoImpl) then) =
      __$$ShitDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime creationDateTime,
      ShitEffort effort,
      ShitConsistency consistency,
      Map<ShitReaction, List<String>>? reactions,
      String? user,
      String? note,
      String? color,
      String? team});
}

/// @nodoc
class __$$ShitDataDtoImplCopyWithImpl<$Res>
    extends _$ShitDataDtoCopyWithImpl<$Res, _$ShitDataDtoImpl>
    implements _$$ShitDataDtoImplCopyWith<$Res> {
  __$$ShitDataDtoImplCopyWithImpl(
      _$ShitDataDtoImpl _value, $Res Function(_$ShitDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creationDateTime = null,
    Object? effort = null,
    Object? consistency = null,
    Object? reactions = freezed,
    Object? user = freezed,
    Object? note = freezed,
    Object? color = freezed,
    Object? team = freezed,
  }) {
    return _then(_$ShitDataDtoImpl(
      creationDateTime: null == creationDateTime
          ? _value.creationDateTime
          : creationDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as ShitEffort,
      consistency: null == consistency
          ? _value.consistency
          : consistency // ignore: cast_nullable_to_non_nullable
              as ShitConsistency,
      reactions: freezed == reactions
          ? _value._reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Map<ShitReaction, List<String>>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ShitDataDtoImpl implements _ShitDataDto {
  _$ShitDataDtoImpl(
      {required this.creationDateTime,
      required this.effort,
      required this.consistency,
      final Map<ShitReaction, List<String>>? reactions,
      this.user,
      this.note,
      this.color,
      this.team})
      : _reactions = reactions;

  factory _$ShitDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShitDataDtoImplFromJson(json);

  @override
  final DateTime creationDateTime;
  @override
  final ShitEffort effort;
  @override
  final ShitConsistency consistency;
  final Map<ShitReaction, List<String>>? _reactions;
  @override
  Map<ShitReaction, List<String>>? get reactions {
    final value = _reactions;
    if (value == null) return null;
    if (_reactions is EqualUnmodifiableMapView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? user;
  @override
  final String? note;
  @override
  final String? color;
  @override
  final String? team;

  @override
  String toString() {
    return 'ShitDataDto(creationDateTime: $creationDateTime, effort: $effort, consistency: $consistency, reactions: $reactions, user: $user, note: $note, color: $color, team: $team)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShitDataDtoImpl &&
            (identical(other.creationDateTime, creationDateTime) ||
                other.creationDateTime == creationDateTime) &&
            (identical(other.effort, effort) || other.effort == effort) &&
            (identical(other.consistency, consistency) ||
                other.consistency == consistency) &&
            const DeepCollectionEquality()
                .equals(other._reactions, _reactions) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.team, team) || other.team == team));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      creationDateTime,
      effort,
      consistency,
      const DeepCollectionEquality().hash(_reactions),
      user,
      note,
      color,
      team);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShitDataDtoImplCopyWith<_$ShitDataDtoImpl> get copyWith =>
      __$$ShitDataDtoImplCopyWithImpl<_$ShitDataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShitDataDtoImplToJson(
      this,
    );
  }
}

abstract class _ShitDataDto implements ShitDataDto {
  factory _ShitDataDto(
      {required final DateTime creationDateTime,
      required final ShitEffort effort,
      required final ShitConsistency consistency,
      final Map<ShitReaction, List<String>>? reactions,
      final String? user,
      final String? note,
      final String? color,
      final String? team}) = _$ShitDataDtoImpl;

  factory _ShitDataDto.fromJson(Map<String, dynamic> json) =
      _$ShitDataDtoImpl.fromJson;

  @override
  DateTime get creationDateTime;
  @override
  ShitEffort get effort;
  @override
  ShitConsistency get consistency;
  @override
  Map<ShitReaction, List<String>>? get reactions;
  @override
  String? get user;
  @override
  String? get note;
  @override
  String? get color;
  @override
  String? get team;
  @override
  @JsonKey(ignore: true)
  _$$ShitDataDtoImplCopyWith<_$ShitDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

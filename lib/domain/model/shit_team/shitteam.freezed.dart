// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shitteam.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShitTeam _$ShitTeamFromJson(Map<String, dynamic> json) {
  return _ShitTeam.fromJson(json);
}

/// @nodoc
mixin _$ShitTeam {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  List<String> get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShitTeamCopyWith<ShitTeam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShitTeamCopyWith<$Res> {
  factory $ShitTeamCopyWith(ShitTeam value, $Res Function(ShitTeam) then) =
      _$ShitTeamCopyWithImpl<$Res, ShitTeam>;
  @useResult
  $Res call({String id, String name, String creator, List<String> members});
}

/// @nodoc
class _$ShitTeamCopyWithImpl<$Res, $Val extends ShitTeam>
    implements $ShitTeamCopyWith<$Res> {
  _$ShitTeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? creator = null,
    Object? members = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShitTeamImplCopyWith<$Res>
    implements $ShitTeamCopyWith<$Res> {
  factory _$$ShitTeamImplCopyWith(
          _$ShitTeamImpl value, $Res Function(_$ShitTeamImpl) then) =
      __$$ShitTeamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String creator, List<String> members});
}

/// @nodoc
class __$$ShitTeamImplCopyWithImpl<$Res>
    extends _$ShitTeamCopyWithImpl<$Res, _$ShitTeamImpl>
    implements _$$ShitTeamImplCopyWith<$Res> {
  __$$ShitTeamImplCopyWithImpl(
      _$ShitTeamImpl _value, $Res Function(_$ShitTeamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? creator = null,
    Object? members = null,
  }) {
    return _then(_$ShitTeamImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShitTeamImpl implements _ShitTeam {
  _$ShitTeamImpl(
      {required this.id,
      required this.name,
      required this.creator,
      required final List<String> members})
      : _members = members;

  factory _$ShitTeamImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShitTeamImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String creator;
  final List<String> _members;
  @override
  List<String> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'ShitTeam(id: $id, name: $name, creator: $creator, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShitTeamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, creator,
      const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShitTeamImplCopyWith<_$ShitTeamImpl> get copyWith =>
      __$$ShitTeamImplCopyWithImpl<_$ShitTeamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShitTeamImplToJson(
      this,
    );
  }
}

abstract class _ShitTeam implements ShitTeam {
  factory _ShitTeam(
      {required final String id,
      required final String name,
      required final String creator,
      required final List<String> members}) = _$ShitTeamImpl;

  factory _ShitTeam.fromJson(Map<String, dynamic> json) =
      _$ShitTeamImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get creator;
  @override
  List<String> get members;
  @override
  @JsonKey(ignore: true)
  _$$ShitTeamImplCopyWith<_$ShitTeamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShitTeamDto _$ShitTeamDtoFromJson(Map<String, dynamic> json) {
  return _ShitTeamDto.fromJson(json);
}

/// @nodoc
mixin _$ShitTeamDto {
  String get id => throw _privateConstructorUsedError;
  ShitTeamDtoData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShitTeamDtoCopyWith<ShitTeamDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShitTeamDtoCopyWith<$Res> {
  factory $ShitTeamDtoCopyWith(
          ShitTeamDto value, $Res Function(ShitTeamDto) then) =
      _$ShitTeamDtoCopyWithImpl<$Res, ShitTeamDto>;
  @useResult
  $Res call({String id, ShitTeamDtoData data});

  $ShitTeamDtoDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ShitTeamDtoCopyWithImpl<$Res, $Val extends ShitTeamDto>
    implements $ShitTeamDtoCopyWith<$Res> {
  _$ShitTeamDtoCopyWithImpl(this._value, this._then);

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
              as ShitTeamDtoData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShitTeamDtoDataCopyWith<$Res> get data {
    return $ShitTeamDtoDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShitTeamDtoImplCopyWith<$Res>
    implements $ShitTeamDtoCopyWith<$Res> {
  factory _$$ShitTeamDtoImplCopyWith(
          _$ShitTeamDtoImpl value, $Res Function(_$ShitTeamDtoImpl) then) =
      __$$ShitTeamDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, ShitTeamDtoData data});

  @override
  $ShitTeamDtoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ShitTeamDtoImplCopyWithImpl<$Res>
    extends _$ShitTeamDtoCopyWithImpl<$Res, _$ShitTeamDtoImpl>
    implements _$$ShitTeamDtoImplCopyWith<$Res> {
  __$$ShitTeamDtoImplCopyWithImpl(
      _$ShitTeamDtoImpl _value, $Res Function(_$ShitTeamDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_$ShitTeamDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ShitTeamDtoData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShitTeamDtoImpl implements _ShitTeamDto {
  _$ShitTeamDtoImpl({required this.id, required this.data});

  factory _$ShitTeamDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShitTeamDtoImplFromJson(json);

  @override
  final String id;
  @override
  final ShitTeamDtoData data;

  @override
  String toString() {
    return 'ShitTeamDto(id: $id, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShitTeamDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShitTeamDtoImplCopyWith<_$ShitTeamDtoImpl> get copyWith =>
      __$$ShitTeamDtoImplCopyWithImpl<_$ShitTeamDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShitTeamDtoImplToJson(
      this,
    );
  }
}

abstract class _ShitTeamDto implements ShitTeamDto {
  factory _ShitTeamDto(
      {required final String id,
      required final ShitTeamDtoData data}) = _$ShitTeamDtoImpl;

  factory _ShitTeamDto.fromJson(Map<String, dynamic> json) =
      _$ShitTeamDtoImpl.fromJson;

  @override
  String get id;
  @override
  ShitTeamDtoData get data;
  @override
  @JsonKey(ignore: true)
  _$$ShitTeamDtoImplCopyWith<_$ShitTeamDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShitTeamDtoData _$ShitTeamDtoDataFromJson(Map<String, dynamic> json) {
  return _ShitTeamDtoData.fromJson(json);
}

/// @nodoc
mixin _$ShitTeamDtoData {
  String get name => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  List<String> get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShitTeamDtoDataCopyWith<ShitTeamDtoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShitTeamDtoDataCopyWith<$Res> {
  factory $ShitTeamDtoDataCopyWith(
          ShitTeamDtoData value, $Res Function(ShitTeamDtoData) then) =
      _$ShitTeamDtoDataCopyWithImpl<$Res, ShitTeamDtoData>;
  @useResult
  $Res call({String name, String creator, List<String> members});
}

/// @nodoc
class _$ShitTeamDtoDataCopyWithImpl<$Res, $Val extends ShitTeamDtoData>
    implements $ShitTeamDtoDataCopyWith<$Res> {
  _$ShitTeamDtoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? creator = null,
    Object? members = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShitTeamDtoDataImplCopyWith<$Res>
    implements $ShitTeamDtoDataCopyWith<$Res> {
  factory _$$ShitTeamDtoDataImplCopyWith(_$ShitTeamDtoDataImpl value,
          $Res Function(_$ShitTeamDtoDataImpl) then) =
      __$$ShitTeamDtoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String creator, List<String> members});
}

/// @nodoc
class __$$ShitTeamDtoDataImplCopyWithImpl<$Res>
    extends _$ShitTeamDtoDataCopyWithImpl<$Res, _$ShitTeamDtoDataImpl>
    implements _$$ShitTeamDtoDataImplCopyWith<$Res> {
  __$$ShitTeamDtoDataImplCopyWithImpl(
      _$ShitTeamDtoDataImpl _value, $Res Function(_$ShitTeamDtoDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? creator = null,
    Object? members = null,
  }) {
    return _then(_$ShitTeamDtoDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ShitTeamDtoDataImpl implements _ShitTeamDtoData {
  _$ShitTeamDtoDataImpl(
      {required this.name,
      required this.creator,
      required final List<String> members})
      : _members = members;

  factory _$ShitTeamDtoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShitTeamDtoDataImplFromJson(json);

  @override
  final String name;
  @override
  final String creator;
  final List<String> _members;
  @override
  List<String> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'ShitTeamDtoData(name: $name, creator: $creator, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShitTeamDtoDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, creator,
      const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShitTeamDtoDataImplCopyWith<_$ShitTeamDtoDataImpl> get copyWith =>
      __$$ShitTeamDtoDataImplCopyWithImpl<_$ShitTeamDtoDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShitTeamDtoDataImplToJson(
      this,
    );
  }
}

abstract class _ShitTeamDtoData implements ShitTeamDtoData {
  factory _ShitTeamDtoData(
      {required final String name,
      required final String creator,
      required final List<String> members}) = _$ShitTeamDtoDataImpl;

  factory _ShitTeamDtoData.fromJson(Map<String, dynamic> json) =
      _$ShitTeamDtoDataImpl.fromJson;

  @override
  String get name;
  @override
  String get creator;
  @override
  List<String> get members;
  @override
  @JsonKey(ignore: true)
  _$$ShitTeamDtoDataImplCopyWith<_$ShitTeamDtoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

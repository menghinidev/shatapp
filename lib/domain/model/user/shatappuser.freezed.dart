// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shatappuser.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShatAppUser _$ShatAppUserFromJson(Map<String, dynamic> json) {
  return _ShatAppUser.fromJson(json);
}

/// @nodoc
mixin _$ShatAppUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShatAppUserCopyWith<ShatAppUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShatAppUserCopyWith<$Res> {
  factory $ShatAppUserCopyWith(
          ShatAppUser value, $Res Function(ShatAppUser) then) =
      _$ShatAppUserCopyWithImpl<$Res, ShatAppUser>;
  @useResult
  $Res call({String id, String name, String? imageUrl});
}

/// @nodoc
class _$ShatAppUserCopyWithImpl<$Res, $Val extends ShatAppUser>
    implements $ShatAppUserCopyWith<$Res> {
  _$ShatAppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = freezed,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShatAppUserImplCopyWith<$Res>
    implements $ShatAppUserCopyWith<$Res> {
  factory _$$ShatAppUserImplCopyWith(
          _$ShatAppUserImpl value, $Res Function(_$ShatAppUserImpl) then) =
      __$$ShatAppUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? imageUrl});
}

/// @nodoc
class __$$ShatAppUserImplCopyWithImpl<$Res>
    extends _$ShatAppUserCopyWithImpl<$Res, _$ShatAppUserImpl>
    implements _$$ShatAppUserImplCopyWith<$Res> {
  __$$ShatAppUserImplCopyWithImpl(
      _$ShatAppUserImpl _value, $Res Function(_$ShatAppUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$ShatAppUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ShatAppUserImpl implements _ShatAppUser {
  _$ShatAppUserImpl({required this.id, required this.name, this.imageUrl});

  factory _$ShatAppUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShatAppUserImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'ShatAppUser(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShatAppUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShatAppUserImplCopyWith<_$ShatAppUserImpl> get copyWith =>
      __$$ShatAppUserImplCopyWithImpl<_$ShatAppUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShatAppUserImplToJson(
      this,
    );
  }
}

abstract class _ShatAppUser implements ShatAppUser {
  factory _ShatAppUser(
      {required final String id,
      required final String name,
      final String? imageUrl}) = _$ShatAppUserImpl;

  factory _ShatAppUser.fromJson(Map<String, dynamic> json) =
      _$ShatAppUserImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$ShatAppUserImplCopyWith<_$ShatAppUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShatAppUserDto _$ShatAppUserDtoFromJson(Map<String, dynamic> json) {
  return _ShatAppUserDto.fromJson(json);
}

/// @nodoc
mixin _$ShatAppUserDto {
  String get id => throw _privateConstructorUsedError;
  ShatAppUserDataDto get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShatAppUserDtoCopyWith<ShatAppUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShatAppUserDtoCopyWith<$Res> {
  factory $ShatAppUserDtoCopyWith(
          ShatAppUserDto value, $Res Function(ShatAppUserDto) then) =
      _$ShatAppUserDtoCopyWithImpl<$Res, ShatAppUserDto>;
  @useResult
  $Res call({String id, ShatAppUserDataDto data});

  $ShatAppUserDataDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$ShatAppUserDtoCopyWithImpl<$Res, $Val extends ShatAppUserDto>
    implements $ShatAppUserDtoCopyWith<$Res> {
  _$ShatAppUserDtoCopyWithImpl(this._value, this._then);

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
              as ShatAppUserDataDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShatAppUserDataDtoCopyWith<$Res> get data {
    return $ShatAppUserDataDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShatAppUserDtoImplCopyWith<$Res>
    implements $ShatAppUserDtoCopyWith<$Res> {
  factory _$$ShatAppUserDtoImplCopyWith(_$ShatAppUserDtoImpl value,
          $Res Function(_$ShatAppUserDtoImpl) then) =
      __$$ShatAppUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, ShatAppUserDataDto data});

  @override
  $ShatAppUserDataDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$ShatAppUserDtoImplCopyWithImpl<$Res>
    extends _$ShatAppUserDtoCopyWithImpl<$Res, _$ShatAppUserDtoImpl>
    implements _$$ShatAppUserDtoImplCopyWith<$Res> {
  __$$ShatAppUserDtoImplCopyWithImpl(
      _$ShatAppUserDtoImpl _value, $Res Function(_$ShatAppUserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_$ShatAppUserDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ShatAppUserDataDto,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ShatAppUserDtoImpl implements _ShatAppUserDto {
  _$ShatAppUserDtoImpl({required this.id, required this.data});

  factory _$ShatAppUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShatAppUserDtoImplFromJson(json);

  @override
  final String id;
  @override
  final ShatAppUserDataDto data;

  @override
  String toString() {
    return 'ShatAppUserDto(id: $id, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShatAppUserDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShatAppUserDtoImplCopyWith<_$ShatAppUserDtoImpl> get copyWith =>
      __$$ShatAppUserDtoImplCopyWithImpl<_$ShatAppUserDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShatAppUserDtoImplToJson(
      this,
    );
  }
}

abstract class _ShatAppUserDto implements ShatAppUserDto {
  factory _ShatAppUserDto(
      {required final String id,
      required final ShatAppUserDataDto data}) = _$ShatAppUserDtoImpl;

  factory _ShatAppUserDto.fromJson(Map<String, dynamic> json) =
      _$ShatAppUserDtoImpl.fromJson;

  @override
  String get id;
  @override
  ShatAppUserDataDto get data;
  @override
  @JsonKey(ignore: true)
  _$$ShatAppUserDtoImplCopyWith<_$ShatAppUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShatAppUserDataDto _$ShatAppUserDataDtoFromJson(Map<String, dynamic> json) {
  return _ShatAppUserDataDto.fromJson(json);
}

/// @nodoc
mixin _$ShatAppUserDataDto {
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShatAppUserDataDtoCopyWith<ShatAppUserDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShatAppUserDataDtoCopyWith<$Res> {
  factory $ShatAppUserDataDtoCopyWith(
          ShatAppUserDataDto value, $Res Function(ShatAppUserDataDto) then) =
      _$ShatAppUserDataDtoCopyWithImpl<$Res, ShatAppUserDataDto>;
  @useResult
  $Res call({String name, String? imageUrl});
}

/// @nodoc
class _$ShatAppUserDataDtoCopyWithImpl<$Res, $Val extends ShatAppUserDataDto>
    implements $ShatAppUserDataDtoCopyWith<$Res> {
  _$ShatAppUserDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShatAppUserDataDtoImplCopyWith<$Res>
    implements $ShatAppUserDataDtoCopyWith<$Res> {
  factory _$$ShatAppUserDataDtoImplCopyWith(_$ShatAppUserDataDtoImpl value,
          $Res Function(_$ShatAppUserDataDtoImpl) then) =
      __$$ShatAppUserDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? imageUrl});
}

/// @nodoc
class __$$ShatAppUserDataDtoImplCopyWithImpl<$Res>
    extends _$ShatAppUserDataDtoCopyWithImpl<$Res, _$ShatAppUserDataDtoImpl>
    implements _$$ShatAppUserDataDtoImplCopyWith<$Res> {
  __$$ShatAppUserDataDtoImplCopyWithImpl(_$ShatAppUserDataDtoImpl _value,
      $Res Function(_$ShatAppUserDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$ShatAppUserDataDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ShatAppUserDataDtoImpl implements _ShatAppUserDataDto {
  _$ShatAppUserDataDtoImpl({required this.name, this.imageUrl});

  factory _$ShatAppUserDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShatAppUserDataDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'ShatAppUserDataDto(name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShatAppUserDataDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShatAppUserDataDtoImplCopyWith<_$ShatAppUserDataDtoImpl> get copyWith =>
      __$$ShatAppUserDataDtoImplCopyWithImpl<_$ShatAppUserDataDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShatAppUserDataDtoImplToJson(
      this,
    );
  }
}

abstract class _ShatAppUserDataDto implements ShatAppUserDataDto {
  factory _ShatAppUserDataDto(
      {required final String name,
      final String? imageUrl}) = _$ShatAppUserDataDtoImpl;

  factory _ShatAppUserDataDto.fromJson(Map<String, dynamic> json) =
      _$ShatAppUserDataDtoImpl.fromJson;

  @override
  String get name;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$ShatAppUserDataDtoImplCopyWith<_$ShatAppUserDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_lobby.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameLobby _$GameLobbyFromJson(Map<String, dynamic> json) {
  return _GameLobby.fromJson(json);
}

/// @nodoc
mixin _$GameLobby {
  List<String> get players => throw _privateConstructorUsedError;
  List<String> get spectators => throw _privateConstructorUsedError;
  GameLobbyStatus get status => throw _privateConstructorUsedError;
  int get maxPlayers => throw _privateConstructorUsedError;
  int get minPlayers => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameLobbyCopyWith<GameLobby> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameLobbyCopyWith<$Res> {
  factory $GameLobbyCopyWith(GameLobby value, $Res Function(GameLobby) then) =
      _$GameLobbyCopyWithImpl<$Res, GameLobby>;
  @useResult
  $Res call(
      {List<String> players,
      List<String> spectators,
      GameLobbyStatus status,
      int maxPlayers,
      int minPlayers,
      String? id});
}

/// @nodoc
class _$GameLobbyCopyWithImpl<$Res, $Val extends GameLobby>
    implements $GameLobbyCopyWith<$Res> {
  _$GameLobbyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? spectators = null,
    Object? status = null,
    Object? maxPlayers = null,
    Object? minPlayers = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<String>,
      spectators: null == spectators
          ? _value.spectators
          : spectators // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameLobbyStatus,
      maxPlayers: null == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
      minPlayers: null == minPlayers
          ? _value.minPlayers
          : minPlayers // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameLobbyImplCopyWith<$Res>
    implements $GameLobbyCopyWith<$Res> {
  factory _$$GameLobbyImplCopyWith(
          _$GameLobbyImpl value, $Res Function(_$GameLobbyImpl) then) =
      __$$GameLobbyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> players,
      List<String> spectators,
      GameLobbyStatus status,
      int maxPlayers,
      int minPlayers,
      String? id});
}

/// @nodoc
class __$$GameLobbyImplCopyWithImpl<$Res>
    extends _$GameLobbyCopyWithImpl<$Res, _$GameLobbyImpl>
    implements _$$GameLobbyImplCopyWith<$Res> {
  __$$GameLobbyImplCopyWithImpl(
      _$GameLobbyImpl _value, $Res Function(_$GameLobbyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? spectators = null,
    Object? status = null,
    Object? maxPlayers = null,
    Object? minPlayers = null,
    Object? id = freezed,
  }) {
    return _then(_$GameLobbyImpl(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<String>,
      spectators: null == spectators
          ? _value._spectators
          : spectators // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameLobbyStatus,
      maxPlayers: null == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
      minPlayers: null == minPlayers
          ? _value.minPlayers
          : minPlayers // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$GameLobbyImpl implements _GameLobby {
  _$GameLobbyImpl(
      {required final List<String> players,
      required final List<String> spectators,
      required this.status,
      required this.maxPlayers,
      required this.minPlayers,
      this.id})
      : _players = players,
        _spectators = spectators;

  factory _$GameLobbyImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameLobbyImplFromJson(json);

  final List<String> _players;
  @override
  List<String> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  final List<String> _spectators;
  @override
  List<String> get spectators {
    if (_spectators is EqualUnmodifiableListView) return _spectators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spectators);
  }

  @override
  final GameLobbyStatus status;
  @override
  final int maxPlayers;
  @override
  final int minPlayers;
  @override
  final String? id;

  @override
  String toString() {
    return 'GameLobby(players: $players, spectators: $spectators, status: $status, maxPlayers: $maxPlayers, minPlayers: $minPlayers, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameLobbyImpl &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            const DeepCollectionEquality()
                .equals(other._spectators, _spectators) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.maxPlayers, maxPlayers) ||
                other.maxPlayers == maxPlayers) &&
            (identical(other.minPlayers, minPlayers) ||
                other.minPlayers == minPlayers) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_players),
      const DeepCollectionEquality().hash(_spectators),
      status,
      maxPlayers,
      minPlayers,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameLobbyImplCopyWith<_$GameLobbyImpl> get copyWith =>
      __$$GameLobbyImplCopyWithImpl<_$GameLobbyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameLobbyImplToJson(
      this,
    );
  }
}

abstract class _GameLobby implements GameLobby {
  factory _GameLobby(
      {required final List<String> players,
      required final List<String> spectators,
      required final GameLobbyStatus status,
      required final int maxPlayers,
      required final int minPlayers,
      final String? id}) = _$GameLobbyImpl;

  factory _GameLobby.fromJson(Map<String, dynamic> json) =
      _$GameLobbyImpl.fromJson;

  @override
  List<String> get players;
  @override
  List<String> get spectators;
  @override
  GameLobbyStatus get status;
  @override
  int get maxPlayers;
  @override
  int get minPlayers;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$GameLobbyImplCopyWith<_$GameLobbyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

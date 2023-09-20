// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwt_tokens.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JwtJokens _$JwtJokensFromJson(Map<String, dynamic> json) {
  return _JwtJokens.fromJson(json);
}

/// @nodoc
mixin _$JwtJokens {
  @JsonKey(name: "access_token")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_token")
  String get refreshToken => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JwtJokensCopyWith<JwtJokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JwtJokensCopyWith<$Res> {
  factory $JwtJokensCopyWith(JwtJokens value, $Res Function(JwtJokens) then) =
      _$JwtJokensCopyWithImpl<$Res, JwtJokens>;
  @useResult
  $Res call(
      {@JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshToken,
      int id});
}

/// @nodoc
class _$JwtJokensCopyWithImpl<$Res, $Val extends JwtJokens>
    implements $JwtJokensCopyWith<$Res> {
  _$JwtJokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JwtJokensCopyWith<$Res> implements $JwtJokensCopyWith<$Res> {
  factory _$$_JwtJokensCopyWith(
          _$_JwtJokens value, $Res Function(_$_JwtJokens) then) =
      __$$_JwtJokensCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshToken,
      int id});
}

/// @nodoc
class __$$_JwtJokensCopyWithImpl<$Res>
    extends _$JwtJokensCopyWithImpl<$Res, _$_JwtJokens>
    implements _$$_JwtJokensCopyWith<$Res> {
  __$$_JwtJokensCopyWithImpl(
      _$_JwtJokens _value, $Res Function(_$_JwtJokens) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? id = null,
  }) {
    return _then(_$_JwtJokens(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JwtJokens implements _JwtJokens {
  const _$_JwtJokens(
      {@JsonKey(name: "access_token") required this.accessToken,
      @JsonKey(name: "refresh_token") required this.refreshToken,
      required this.id});

  factory _$_JwtJokens.fromJson(Map<String, dynamic> json) =>
      _$$_JwtJokensFromJson(json);

  @override
  @JsonKey(name: "access_token")
  final String accessToken;
  @override
  @JsonKey(name: "refresh_token")
  final String refreshToken;
  @override
  final int id;

  @override
  String toString() {
    return 'JwtJokens(accessToken: $accessToken, refreshToken: $refreshToken, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JwtJokens &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JwtJokensCopyWith<_$_JwtJokens> get copyWith =>
      __$$_JwtJokensCopyWithImpl<_$_JwtJokens>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JwtJokensToJson(
      this,
    );
  }
}

abstract class _JwtJokens implements JwtJokens {
  const factory _JwtJokens(
      {@JsonKey(name: "access_token") required final String accessToken,
      @JsonKey(name: "refresh_token") required final String refreshToken,
      required final int id}) = _$_JwtJokens;

  factory _JwtJokens.fromJson(Map<String, dynamic> json) =
      _$_JwtJokens.fromJson;

  @override
  @JsonKey(name: "access_token")
  String get accessToken;
  @override
  @JsonKey(name: "refresh_token")
  String get refreshToken;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_JwtJokensCopyWith<_$_JwtJokens> get copyWith =>
      throw _privateConstructorUsedError;
}

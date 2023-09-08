// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_film_cover.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateFilmCover {
  String get pictureType => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  @JsonKey(name: "film_id")
  int get filmId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateFilmCoverCopyWith<UpdateFilmCover> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFilmCoverCopyWith<$Res> {
  factory $UpdateFilmCoverCopyWith(
          UpdateFilmCover value, $Res Function(UpdateFilmCover) then) =
      _$UpdateFilmCoverCopyWithImpl<$Res, UpdateFilmCover>;
  @useResult
  $Res call(
      {String pictureType,
      String picture,
      @JsonKey(name: "film_id") int filmId});
}

/// @nodoc
class _$UpdateFilmCoverCopyWithImpl<$Res, $Val extends UpdateFilmCover>
    implements $UpdateFilmCoverCopyWith<$Res> {
  _$UpdateFilmCoverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictureType = null,
    Object? picture = null,
    Object? filmId = null,
  }) {
    return _then(_value.copyWith(
      pictureType: null == pictureType
          ? _value.pictureType
          : pictureType // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      filmId: null == filmId
          ? _value.filmId
          : filmId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateFilmCoverCopyWith<$Res>
    implements $UpdateFilmCoverCopyWith<$Res> {
  factory _$$_UpdateFilmCoverCopyWith(
          _$_UpdateFilmCover value, $Res Function(_$_UpdateFilmCover) then) =
      __$$_UpdateFilmCoverCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pictureType,
      String picture,
      @JsonKey(name: "film_id") int filmId});
}

/// @nodoc
class __$$_UpdateFilmCoverCopyWithImpl<$Res>
    extends _$UpdateFilmCoverCopyWithImpl<$Res, _$_UpdateFilmCover>
    implements _$$_UpdateFilmCoverCopyWith<$Res> {
  __$$_UpdateFilmCoverCopyWithImpl(
      _$_UpdateFilmCover _value, $Res Function(_$_UpdateFilmCover) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictureType = null,
    Object? picture = null,
    Object? filmId = null,
  }) {
    return _then(_$_UpdateFilmCover(
      pictureType: null == pictureType
          ? _value.pictureType
          : pictureType // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      filmId: null == filmId
          ? _value.filmId
          : filmId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_UpdateFilmCover implements _UpdateFilmCover {
  const _$_UpdateFilmCover(
      {required this.pictureType,
      required this.picture,
      @JsonKey(name: "film_id") required this.filmId});

  @override
  final String pictureType;
  @override
  final String picture;
  @override
  @JsonKey(name: "film_id")
  final int filmId;

  @override
  String toString() {
    return 'UpdateFilmCover(pictureType: $pictureType, picture: $picture, filmId: $filmId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFilmCover &&
            (identical(other.pictureType, pictureType) ||
                other.pictureType == pictureType) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.filmId, filmId) || other.filmId == filmId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pictureType, picture, filmId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateFilmCoverCopyWith<_$_UpdateFilmCover> get copyWith =>
      __$$_UpdateFilmCoverCopyWithImpl<_$_UpdateFilmCover>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateFilmCoverToJson(
      this,
    );
  }
}

abstract class _UpdateFilmCover implements UpdateFilmCover {
  const factory _UpdateFilmCover(
          {required final String pictureType,
          required final String picture,
          @JsonKey(name: "film_id") required final int filmId}) =
      _$_UpdateFilmCover;

  @override
  String get pictureType;
  @override
  String get picture;
  @override
  @JsonKey(name: "film_id")
  int get filmId;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateFilmCoverCopyWith<_$_UpdateFilmCover> get copyWith =>
      throw _privateConstructorUsedError;
}

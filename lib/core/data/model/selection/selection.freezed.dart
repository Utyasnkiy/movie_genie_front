// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Selection _$SelectionFromJson(Map<String, dynamic> json) {
  return _Selection.fromJson(json);
}

/// @nodoc
mixin _$Selection {
  int get id => throw _privateConstructorUsedError;
  int get owner => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ResponsePicture get responsePictureDto => throw _privateConstructorUsedError;
  List<Film> get films => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectionCopyWith<Selection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectionCopyWith<$Res> {
  factory $SelectionCopyWith(Selection value, $Res Function(Selection) then) =
      _$SelectionCopyWithImpl<$Res, Selection>;
  @useResult
  $Res call(
      {int id,
      int owner,
      String tag,
      String name,
      ResponsePicture responsePictureDto,
      List<Film> films});

  $ResponsePictureCopyWith<$Res> get responsePictureDto;
}

/// @nodoc
class _$SelectionCopyWithImpl<$Res, $Val extends Selection>
    implements $SelectionCopyWith<$Res> {
  _$SelectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? owner = null,
    Object? tag = null,
    Object? name = null,
    Object? responsePictureDto = null,
    Object? films = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as int,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      responsePictureDto: null == responsePictureDto
          ? _value.responsePictureDto
          : responsePictureDto // ignore: cast_nullable_to_non_nullable
              as ResponsePicture,
      films: null == films
          ? _value.films
          : films // ignore: cast_nullable_to_non_nullable
              as List<Film>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponsePictureCopyWith<$Res> get responsePictureDto {
    return $ResponsePictureCopyWith<$Res>(_value.responsePictureDto, (value) {
      return _then(_value.copyWith(responsePictureDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SelectionCopyWith<$Res> implements $SelectionCopyWith<$Res> {
  factory _$$_SelectionCopyWith(
          _$_Selection value, $Res Function(_$_Selection) then) =
      __$$_SelectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int owner,
      String tag,
      String name,
      ResponsePicture responsePictureDto,
      List<Film> films});

  @override
  $ResponsePictureCopyWith<$Res> get responsePictureDto;
}

/// @nodoc
class __$$_SelectionCopyWithImpl<$Res>
    extends _$SelectionCopyWithImpl<$Res, _$_Selection>
    implements _$$_SelectionCopyWith<$Res> {
  __$$_SelectionCopyWithImpl(
      _$_Selection _value, $Res Function(_$_Selection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? owner = null,
    Object? tag = null,
    Object? name = null,
    Object? responsePictureDto = null,
    Object? films = null,
  }) {
    return _then(_$_Selection(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as int,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      responsePictureDto: null == responsePictureDto
          ? _value.responsePictureDto
          : responsePictureDto // ignore: cast_nullable_to_non_nullable
              as ResponsePicture,
      films: null == films
          ? _value._films
          : films // ignore: cast_nullable_to_non_nullable
              as List<Film>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Selection implements _Selection {
  const _$_Selection(
      {required this.id,
      required this.owner,
      required this.tag,
      required this.name,
      required this.responsePictureDto,
      required final List<Film> films})
      : _films = films;

  factory _$_Selection.fromJson(Map<String, dynamic> json) =>
      _$$_SelectionFromJson(json);

  @override
  final int id;
  @override
  final int owner;
  @override
  final String tag;
  @override
  final String name;
  @override
  final ResponsePicture responsePictureDto;
  final List<Film> _films;
  @override
  List<Film> get films {
    if (_films is EqualUnmodifiableListView) return _films;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_films);
  }

  @override
  String toString() {
    return 'Selection(id: $id, owner: $owner, tag: $tag, name: $name, responsePictureDto: $responsePictureDto, films: $films)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Selection &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.responsePictureDto, responsePictureDto) ||
                other.responsePictureDto == responsePictureDto) &&
            const DeepCollectionEquality().equals(other._films, _films));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, owner, tag, name,
      responsePictureDto, const DeepCollectionEquality().hash(_films));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectionCopyWith<_$_Selection> get copyWith =>
      __$$_SelectionCopyWithImpl<_$_Selection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectionToJson(
      this,
    );
  }
}

abstract class _Selection implements Selection {
  const factory _Selection(
      {required final int id,
      required final int owner,
      required final String tag,
      required final String name,
      required final ResponsePicture responsePictureDto,
      required final List<Film> films}) = _$_Selection;

  factory _Selection.fromJson(Map<String, dynamic> json) =
      _$_Selection.fromJson;

  @override
  int get id;
  @override
  int get owner;
  @override
  String get tag;
  @override
  String get name;
  @override
  ResponsePicture get responsePictureDto;
  @override
  List<Film> get films;
  @override
  @JsonKey(ignore: true)
  _$$_SelectionCopyWith<_$_Selection> get copyWith =>
      throw _privateConstructorUsedError;
}

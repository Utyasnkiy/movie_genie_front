// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'film.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Film _$FilmFromJson(Map<String, dynamic> json) {
  return _Film.fromJson(json);
}

/// @nodoc
mixin _$Film {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get director => throw _privateConstructorUsedError;
  ResponsePicture get responsePictureDto => throw _privateConstructorUsedError;
  int get fees => throw _privateConstructorUsedError;
  String get plot => throw _privateConstructorUsedError;
  @JsonKey(name: "release_year")
  int get releaseYear => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmCopyWith<Film> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmCopyWith<$Res> {
  factory $FilmCopyWith(Film value, $Res Function(Film) then) =
      _$FilmCopyWithImpl<$Res, Film>;
  @useResult
  $Res call(
      {int id,
      String title,
      String country,
      String director,
      ResponsePicture responsePictureDto,
      int fees,
      String plot,
      @JsonKey(name: "release_year") int releaseYear});

  $ResponsePictureCopyWith<$Res> get responsePictureDto;
}

/// @nodoc
class _$FilmCopyWithImpl<$Res, $Val extends Film>
    implements $FilmCopyWith<$Res> {
  _$FilmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? country = null,
    Object? director = null,
    Object? responsePictureDto = null,
    Object? fees = null,
    Object? plot = null,
    Object? releaseYear = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      director: null == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String,
      responsePictureDto: null == responsePictureDto
          ? _value.responsePictureDto
          : responsePictureDto // ignore: cast_nullable_to_non_nullable
              as ResponsePicture,
      fees: null == fees
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as int,
      plot: null == plot
          ? _value.plot
          : plot // ignore: cast_nullable_to_non_nullable
              as String,
      releaseYear: null == releaseYear
          ? _value.releaseYear
          : releaseYear // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_FilmCopyWith<$Res> implements $FilmCopyWith<$Res> {
  factory _$$_FilmCopyWith(_$_Film value, $Res Function(_$_Film) then) =
      __$$_FilmCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String country,
      String director,
      ResponsePicture responsePictureDto,
      int fees,
      String plot,
      @JsonKey(name: "release_year") int releaseYear});

  @override
  $ResponsePictureCopyWith<$Res> get responsePictureDto;
}

/// @nodoc
class __$$_FilmCopyWithImpl<$Res> extends _$FilmCopyWithImpl<$Res, _$_Film>
    implements _$$_FilmCopyWith<$Res> {
  __$$_FilmCopyWithImpl(_$_Film _value, $Res Function(_$_Film) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? country = null,
    Object? director = null,
    Object? responsePictureDto = null,
    Object? fees = null,
    Object? plot = null,
    Object? releaseYear = null,
  }) {
    return _then(_$_Film(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      director: null == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String,
      responsePictureDto: null == responsePictureDto
          ? _value.responsePictureDto
          : responsePictureDto // ignore: cast_nullable_to_non_nullable
              as ResponsePicture,
      fees: null == fees
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as int,
      plot: null == plot
          ? _value.plot
          : plot // ignore: cast_nullable_to_non_nullable
              as String,
      releaseYear: null == releaseYear
          ? _value.releaseYear
          : releaseYear // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Film implements _Film {
  const _$_Film(
      {required this.id,
      required this.title,
      required this.country,
      required this.director,
      required this.responsePictureDto,
      required this.fees,
      required this.plot,
      @JsonKey(name: "release_year") required this.releaseYear});

  factory _$_Film.fromJson(Map<String, dynamic> json) => _$$_FilmFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String country;
  @override
  final String director;
  @override
  final ResponsePicture responsePictureDto;
  @override
  final int fees;
  @override
  final String plot;
  @override
  @JsonKey(name: "release_year")
  final int releaseYear;

  @override
  String toString() {
    return 'Film(id: $id, title: $title, country: $country, director: $director, responsePictureDto: $responsePictureDto, fees: $fees, plot: $plot, releaseYear: $releaseYear)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Film &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.director, director) ||
                other.director == director) &&
            (identical(other.responsePictureDto, responsePictureDto) ||
                other.responsePictureDto == responsePictureDto) &&
            (identical(other.fees, fees) || other.fees == fees) &&
            (identical(other.plot, plot) || other.plot == plot) &&
            (identical(other.releaseYear, releaseYear) ||
                other.releaseYear == releaseYear));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, country, director,
      responsePictureDto, fees, plot, releaseYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilmCopyWith<_$_Film> get copyWith =>
      __$$_FilmCopyWithImpl<_$_Film>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilmToJson(
      this,
    );
  }
}

abstract class _Film implements Film {
  const factory _Film(
      {required final int id,
      required final String title,
      required final String country,
      required final String director,
      required final ResponsePicture responsePictureDto,
      required final int fees,
      required final String plot,
      @JsonKey(name: "release_year") required final int releaseYear}) = _$_Film;

  factory _Film.fromJson(Map<String, dynamic> json) = _$_Film.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get country;
  @override
  String get director;
  @override
  ResponsePicture get responsePictureDto;
  @override
  int get fees;
  @override
  String get plot;
  @override
  @JsonKey(name: "release_year")
  int get releaseYear;
  @override
  @JsonKey(ignore: true)
  _$$_FilmCopyWith<_$_Film> get copyWith => throw _privateConstructorUsedError;
}

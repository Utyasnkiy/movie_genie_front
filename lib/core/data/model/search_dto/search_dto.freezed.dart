// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchDto _$SearchDtoFromJson(Map<String, dynamic> json) {
  return _SearchDto.fromJson(json);
}

/// @nodoc
mixin _$SearchDto {
  List<Film> get title_films => throw _privateConstructorUsedError;
  List<Film> get plot_films => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchDtoCopyWith<SearchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDtoCopyWith<$Res> {
  factory $SearchDtoCopyWith(SearchDto value, $Res Function(SearchDto) then) =
      _$SearchDtoCopyWithImpl<$Res, SearchDto>;
  @useResult
  $Res call({List<Film> title_films, List<Film> plot_films});
}

/// @nodoc
class _$SearchDtoCopyWithImpl<$Res, $Val extends SearchDto>
    implements $SearchDtoCopyWith<$Res> {
  _$SearchDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title_films = null,
    Object? plot_films = null,
  }) {
    return _then(_value.copyWith(
      title_films: null == title_films
          ? _value.title_films
          : title_films // ignore: cast_nullable_to_non_nullable
              as List<Film>,
      plot_films: null == plot_films
          ? _value.plot_films
          : plot_films // ignore: cast_nullable_to_non_nullable
              as List<Film>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchDtoCopyWith<$Res> implements $SearchDtoCopyWith<$Res> {
  factory _$$_SearchDtoCopyWith(
          _$_SearchDto value, $Res Function(_$_SearchDto) then) =
      __$$_SearchDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Film> title_films, List<Film> plot_films});
}

/// @nodoc
class __$$_SearchDtoCopyWithImpl<$Res>
    extends _$SearchDtoCopyWithImpl<$Res, _$_SearchDto>
    implements _$$_SearchDtoCopyWith<$Res> {
  __$$_SearchDtoCopyWithImpl(
      _$_SearchDto _value, $Res Function(_$_SearchDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title_films = null,
    Object? plot_films = null,
  }) {
    return _then(_$_SearchDto(
      title_films: null == title_films
          ? _value._title_films
          : title_films // ignore: cast_nullable_to_non_nullable
              as List<Film>,
      plot_films: null == plot_films
          ? _value._plot_films
          : plot_films // ignore: cast_nullable_to_non_nullable
              as List<Film>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchDto implements _SearchDto {
  const _$_SearchDto(
      {required final List<Film> title_films,
      required final List<Film> plot_films})
      : _title_films = title_films,
        _plot_films = plot_films;

  factory _$_SearchDto.fromJson(Map<String, dynamic> json) =>
      _$$_SearchDtoFromJson(json);

  final List<Film> _title_films;
  @override
  List<Film> get title_films {
    if (_title_films is EqualUnmodifiableListView) return _title_films;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_title_films);
  }

  final List<Film> _plot_films;
  @override
  List<Film> get plot_films {
    if (_plot_films is EqualUnmodifiableListView) return _plot_films;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plot_films);
  }

  @override
  String toString() {
    return 'SearchDto(title_films: $title_films, plot_films: $plot_films)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchDto &&
            const DeepCollectionEquality()
                .equals(other._title_films, _title_films) &&
            const DeepCollectionEquality()
                .equals(other._plot_films, _plot_films));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_title_films),
      const DeepCollectionEquality().hash(_plot_films));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchDtoCopyWith<_$_SearchDto> get copyWith =>
      __$$_SearchDtoCopyWithImpl<_$_SearchDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchDtoToJson(
      this,
    );
  }
}

abstract class _SearchDto implements SearchDto {
  const factory _SearchDto(
      {required final List<Film> title_films,
      required final List<Film> plot_films}) = _$_SearchDto;

  factory _SearchDto.fromJson(Map<String, dynamic> json) =
      _$_SearchDto.fromJson;

  @override
  List<Film> get title_films;
  @override
  List<Film> get plot_films;
  @override
  @JsonKey(ignore: true)
  _$$_SearchDtoCopyWith<_$_SearchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

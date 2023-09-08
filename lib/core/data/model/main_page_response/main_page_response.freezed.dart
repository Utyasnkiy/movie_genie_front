// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_page_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainPageResponse _$MainPageResponseFromJson(Map<String, dynamic> json) {
  return _MainPageResponse.fromJson(json);
}

/// @nodoc
mixin _$MainPageResponse {
  List<Film> get films => throw _privateConstructorUsedError;
  List<Selection> get selections => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainPageResponseCopyWith<MainPageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageResponseCopyWith<$Res> {
  factory $MainPageResponseCopyWith(
          MainPageResponse value, $Res Function(MainPageResponse) then) =
      _$MainPageResponseCopyWithImpl<$Res, MainPageResponse>;
  @useResult
  $Res call({List<Film> films, List<Selection> selections});
}

/// @nodoc
class _$MainPageResponseCopyWithImpl<$Res, $Val extends MainPageResponse>
    implements $MainPageResponseCopyWith<$Res> {
  _$MainPageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? films = null,
    Object? selections = null,
  }) {
    return _then(_value.copyWith(
      films: null == films
          ? _value.films
          : films // ignore: cast_nullable_to_non_nullable
              as List<Film>,
      selections: null == selections
          ? _value.selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<Selection>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainPageResponseCopyWith<$Res>
    implements $MainPageResponseCopyWith<$Res> {
  factory _$$_MainPageResponseCopyWith(
          _$_MainPageResponse value, $Res Function(_$_MainPageResponse) then) =
      __$$_MainPageResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Film> films, List<Selection> selections});
}

/// @nodoc
class __$$_MainPageResponseCopyWithImpl<$Res>
    extends _$MainPageResponseCopyWithImpl<$Res, _$_MainPageResponse>
    implements _$$_MainPageResponseCopyWith<$Res> {
  __$$_MainPageResponseCopyWithImpl(
      _$_MainPageResponse _value, $Res Function(_$_MainPageResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? films = null,
    Object? selections = null,
  }) {
    return _then(_$_MainPageResponse(
      films: null == films
          ? _value._films
          : films // ignore: cast_nullable_to_non_nullable
              as List<Film>,
      selections: null == selections
          ? _value._selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<Selection>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MainPageResponse implements _MainPageResponse {
  const _$_MainPageResponse(
      {required final List<Film> films,
      required final List<Selection> selections})
      : _films = films,
        _selections = selections;

  factory _$_MainPageResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MainPageResponseFromJson(json);

  final List<Film> _films;
  @override
  List<Film> get films {
    if (_films is EqualUnmodifiableListView) return _films;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_films);
  }

  final List<Selection> _selections;
  @override
  List<Selection> get selections {
    if (_selections is EqualUnmodifiableListView) return _selections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selections);
  }

  @override
  String toString() {
    return 'MainPageResponse(films: $films, selections: $selections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainPageResponse &&
            const DeepCollectionEquality().equals(other._films, _films) &&
            const DeepCollectionEquality()
                .equals(other._selections, _selections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_films),
      const DeepCollectionEquality().hash(_selections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainPageResponseCopyWith<_$_MainPageResponse> get copyWith =>
      __$$_MainPageResponseCopyWithImpl<_$_MainPageResponse>(this, _$identity);
}

abstract class _MainPageResponse implements MainPageResponse {
  const factory _MainPageResponse(
      {required final List<Film> films,
      required final List<Selection> selections}) = _$_MainPageResponse;

  factory _MainPageResponse.fromJson(Map<String, dynamic> json) =
      _$_MainPageResponse.fromJson;

  @override
  List<Film> get films;
  @override
  List<Selection> get selections;
  @override
  @JsonKey(ignore: true)
  _$$_MainPageResponseCopyWith<_$_MainPageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

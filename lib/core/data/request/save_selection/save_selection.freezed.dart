// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_selection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaveSelectionRequest {
  String get tag => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get owner => throw _privateConstructorUsedError;
  List<Film> get films => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveSelectionRequestCopyWith<SaveSelectionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveSelectionRequestCopyWith<$Res> {
  factory $SaveSelectionRequestCopyWith(SaveSelectionRequest value,
          $Res Function(SaveSelectionRequest) then) =
      _$SaveSelectionRequestCopyWithImpl<$Res, SaveSelectionRequest>;
  @useResult
  $Res call({String tag, String name, int owner, List<Film> films});
}

/// @nodoc
class _$SaveSelectionRequestCopyWithImpl<$Res,
        $Val extends SaveSelectionRequest>
    implements $SaveSelectionRequestCopyWith<$Res> {
  _$SaveSelectionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? name = null,
    Object? owner = null,
    Object? films = null,
  }) {
    return _then(_value.copyWith(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as int,
      films: null == films
          ? _value.films
          : films // ignore: cast_nullable_to_non_nullable
              as List<Film>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaveSelectionCopyWith<$Res>
    implements $SaveSelectionRequestCopyWith<$Res> {
  factory _$$_SaveSelectionCopyWith(
          _$_SaveSelection value, $Res Function(_$_SaveSelection) then) =
      __$$_SaveSelectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tag, String name, int owner, List<Film> films});
}

/// @nodoc
class __$$_SaveSelectionCopyWithImpl<$Res>
    extends _$SaveSelectionRequestCopyWithImpl<$Res, _$_SaveSelection>
    implements _$$_SaveSelectionCopyWith<$Res> {
  __$$_SaveSelectionCopyWithImpl(
      _$_SaveSelection _value, $Res Function(_$_SaveSelection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? name = null,
    Object? owner = null,
    Object? films = null,
  }) {
    return _then(_$_SaveSelection(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as int,
      films: null == films
          ? _value._films
          : films // ignore: cast_nullable_to_non_nullable
              as List<Film>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_SaveSelection implements _SaveSelection {
  const _$_SaveSelection(
      {required this.tag,
      required this.name,
      required this.owner,
      required final List<Film> films})
      : _films = films;

  @override
  final String tag;
  @override
  final String name;
  @override
  final int owner;
  final List<Film> _films;
  @override
  List<Film> get films {
    if (_films is EqualUnmodifiableListView) return _films;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_films);
  }

  @override
  String toString() {
    return 'SaveSelectionRequest(tag: $tag, name: $name, owner: $owner, films: $films)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveSelection &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality().equals(other._films, _films));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tag, name, owner,
      const DeepCollectionEquality().hash(_films));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveSelectionCopyWith<_$_SaveSelection> get copyWith =>
      __$$_SaveSelectionCopyWithImpl<_$_SaveSelection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaveSelectionToJson(
      this,
    );
  }
}

abstract class _SaveSelection implements SaveSelectionRequest {
  const factory _SaveSelection(
      {required final String tag,
      required final String name,
      required final int owner,
      required final List<Film> films}) = _$_SaveSelection;

  @override
  String get tag;
  @override
  String get name;
  @override
  int get owner;
  @override
  List<Film> get films;
  @override
  @JsonKey(ignore: true)
  _$$_SaveSelectionCopyWith<_$_SaveSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

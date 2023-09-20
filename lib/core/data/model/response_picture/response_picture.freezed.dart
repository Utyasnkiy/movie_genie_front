// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponsePicture _$ResponsePictureFromJson(Map<String, dynamic> json) {
  return _ResponsePicture.fromJson(json);
}

/// @nodoc
mixin _$ResponsePicture {
  @JsonKey(name: "picture_type")
  String? get pictureType =>
      throw _privateConstructorUsedError; //Unit8List, List<String>, List<int> bytes
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponsePictureCopyWith<ResponsePicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsePictureCopyWith<$Res> {
  factory $ResponsePictureCopyWith(
          ResponsePicture value, $Res Function(ResponsePicture) then) =
      _$ResponsePictureCopyWithImpl<$Res, ResponsePicture>;
  @useResult
  $Res call({@JsonKey(name: "picture_type") String? pictureType, String? data});
}

/// @nodoc
class _$ResponsePictureCopyWithImpl<$Res, $Val extends ResponsePicture>
    implements $ResponsePictureCopyWith<$Res> {
  _$ResponsePictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictureType = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      pictureType: freezed == pictureType
          ? _value.pictureType
          : pictureType // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponsePictureCopyWith<$Res>
    implements $ResponsePictureCopyWith<$Res> {
  factory _$$_ResponsePictureCopyWith(
          _$_ResponsePicture value, $Res Function(_$_ResponsePicture) then) =
      __$$_ResponsePictureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "picture_type") String? pictureType, String? data});
}

/// @nodoc
class __$$_ResponsePictureCopyWithImpl<$Res>
    extends _$ResponsePictureCopyWithImpl<$Res, _$_ResponsePicture>
    implements _$$_ResponsePictureCopyWith<$Res> {
  __$$_ResponsePictureCopyWithImpl(
      _$_ResponsePicture _value, $Res Function(_$_ResponsePicture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictureType = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ResponsePicture(
      pictureType: freezed == pictureType
          ? _value.pictureType
          : pictureType // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponsePicture implements _ResponsePicture {
  const _$_ResponsePicture(
      {@JsonKey(name: "picture_type") required this.pictureType,
      required this.data});

  factory _$_ResponsePicture.fromJson(Map<String, dynamic> json) =>
      _$$_ResponsePictureFromJson(json);

  @override
  @JsonKey(name: "picture_type")
  final String? pictureType;
//Unit8List, List<String>, List<int> bytes
  @override
  final String? data;

  @override
  String toString() {
    return 'ResponsePicture(pictureType: $pictureType, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponsePicture &&
            (identical(other.pictureType, pictureType) ||
                other.pictureType == pictureType) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pictureType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponsePictureCopyWith<_$_ResponsePicture> get copyWith =>
      __$$_ResponsePictureCopyWithImpl<_$_ResponsePicture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponsePictureToJson(
      this,
    );
  }
}

abstract class _ResponsePicture implements ResponsePicture {
  const factory _ResponsePicture(
      {@JsonKey(name: "picture_type") required final String? pictureType,
      required final String? data}) = _$_ResponsePicture;

  factory _ResponsePicture.fromJson(Map<String, dynamic> json) =
      _$_ResponsePicture.fromJson;

  @override
  @JsonKey(name: "picture_type")
  String? get pictureType;
  @override //Unit8List, List<String>, List<int> bytes
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResponsePictureCopyWith<_$_ResponsePicture> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_selection_cover.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateSelectionCoverRequest {
// [PNG, JPEG]
  String get pictureType => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  @JsonKey(name: "selection_id")
  int get selectionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateSelectionCoverRequestCopyWith<UpdateSelectionCoverRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSelectionCoverRequestCopyWith<$Res> {
  factory $UpdateSelectionCoverRequestCopyWith(
          UpdateSelectionCoverRequest value,
          $Res Function(UpdateSelectionCoverRequest) then) =
      _$UpdateSelectionCoverRequestCopyWithImpl<$Res,
          UpdateSelectionCoverRequest>;
  @useResult
  $Res call(
      {String pictureType,
      String picture,
      @JsonKey(name: "selection_id") int selectionId});
}

/// @nodoc
class _$UpdateSelectionCoverRequestCopyWithImpl<$Res,
        $Val extends UpdateSelectionCoverRequest>
    implements $UpdateSelectionCoverRequestCopyWith<$Res> {
  _$UpdateSelectionCoverRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictureType = null,
    Object? picture = null,
    Object? selectionId = null,
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
      selectionId: null == selectionId
          ? _value.selectionId
          : selectionId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateSelectionCoverRequestCopyWith<$Res>
    implements $UpdateSelectionCoverRequestCopyWith<$Res> {
  factory _$$_UpdateSelectionCoverRequestCopyWith(
          _$_UpdateSelectionCoverRequest value,
          $Res Function(_$_UpdateSelectionCoverRequest) then) =
      __$$_UpdateSelectionCoverRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pictureType,
      String picture,
      @JsonKey(name: "selection_id") int selectionId});
}

/// @nodoc
class __$$_UpdateSelectionCoverRequestCopyWithImpl<$Res>
    extends _$UpdateSelectionCoverRequestCopyWithImpl<$Res,
        _$_UpdateSelectionCoverRequest>
    implements _$$_UpdateSelectionCoverRequestCopyWith<$Res> {
  __$$_UpdateSelectionCoverRequestCopyWithImpl(
      _$_UpdateSelectionCoverRequest _value,
      $Res Function(_$_UpdateSelectionCoverRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictureType = null,
    Object? picture = null,
    Object? selectionId = null,
  }) {
    return _then(_$_UpdateSelectionCoverRequest(
      pictureType: null == pictureType
          ? _value.pictureType
          : pictureType // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      selectionId: null == selectionId
          ? _value.selectionId
          : selectionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_UpdateSelectionCoverRequest implements _UpdateSelectionCoverRequest {
  const _$_UpdateSelectionCoverRequest(
      {required this.pictureType,
      required this.picture,
      @JsonKey(name: "selection_id") required this.selectionId});

// [PNG, JPEG]
  @override
  final String pictureType;
  @override
  final String picture;
  @override
  @JsonKey(name: "selection_id")
  final int selectionId;

  @override
  String toString() {
    return 'UpdateSelectionCoverRequest(pictureType: $pictureType, picture: $picture, selectionId: $selectionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSelectionCoverRequest &&
            (identical(other.pictureType, pictureType) ||
                other.pictureType == pictureType) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.selectionId, selectionId) ||
                other.selectionId == selectionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pictureType, picture, selectionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateSelectionCoverRequestCopyWith<_$_UpdateSelectionCoverRequest>
      get copyWith => __$$_UpdateSelectionCoverRequestCopyWithImpl<
          _$_UpdateSelectionCoverRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateSelectionCoverRequestToJson(
      this,
    );
  }
}

abstract class _UpdateSelectionCoverRequest
    implements UpdateSelectionCoverRequest {
  const factory _UpdateSelectionCoverRequest(
          {required final String pictureType,
          required final String picture,
          @JsonKey(name: "selection_id") required final int selectionId}) =
      _$_UpdateSelectionCoverRequest;

  @override // [PNG, JPEG]
  String get pictureType;
  @override
  String get picture;
  @override
  @JsonKey(name: "selection_id")
  int get selectionId;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateSelectionCoverRequestCopyWith<_$_UpdateSelectionCoverRequest>
      get copyWith => throw _privateConstructorUsedError;
}

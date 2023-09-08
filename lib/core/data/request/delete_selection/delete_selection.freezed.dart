// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_selection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteSelectionRequest {
  @JsonKey(name: "selection_id")
  int get selectionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteSelectionRequestCopyWith<DeleteSelectionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteSelectionRequestCopyWith<$Res> {
  factory $DeleteSelectionRequestCopyWith(DeleteSelectionRequest value,
          $Res Function(DeleteSelectionRequest) then) =
      _$DeleteSelectionRequestCopyWithImpl<$Res, DeleteSelectionRequest>;
  @useResult
  $Res call({@JsonKey(name: "selection_id") int selectionId});
}

/// @nodoc
class _$DeleteSelectionRequestCopyWithImpl<$Res,
        $Val extends DeleteSelectionRequest>
    implements $DeleteSelectionRequestCopyWith<$Res> {
  _$DeleteSelectionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectionId = null,
  }) {
    return _then(_value.copyWith(
      selectionId: null == selectionId
          ? _value.selectionId
          : selectionId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteSelectionRequestCopyWith<$Res>
    implements $DeleteSelectionRequestCopyWith<$Res> {
  factory _$$_DeleteSelectionRequestCopyWith(_$_DeleteSelectionRequest value,
          $Res Function(_$_DeleteSelectionRequest) then) =
      __$$_DeleteSelectionRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "selection_id") int selectionId});
}

/// @nodoc
class __$$_DeleteSelectionRequestCopyWithImpl<$Res>
    extends _$DeleteSelectionRequestCopyWithImpl<$Res,
        _$_DeleteSelectionRequest>
    implements _$$_DeleteSelectionRequestCopyWith<$Res> {
  __$$_DeleteSelectionRequestCopyWithImpl(_$_DeleteSelectionRequest _value,
      $Res Function(_$_DeleteSelectionRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectionId = null,
  }) {
    return _then(_$_DeleteSelectionRequest(
      selectionId: null == selectionId
          ? _value.selectionId
          : selectionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_DeleteSelectionRequest implements _DeleteSelectionRequest {
  const _$_DeleteSelectionRequest(
      {@JsonKey(name: "selection_id") required this.selectionId});

  @override
  @JsonKey(name: "selection_id")
  final int selectionId;

  @override
  String toString() {
    return 'DeleteSelectionRequest(selectionId: $selectionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteSelectionRequest &&
            (identical(other.selectionId, selectionId) ||
                other.selectionId == selectionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, selectionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteSelectionRequestCopyWith<_$_DeleteSelectionRequest> get copyWith =>
      __$$_DeleteSelectionRequestCopyWithImpl<_$_DeleteSelectionRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteSelectionRequestToJson(
      this,
    );
  }
}

abstract class _DeleteSelectionRequest implements DeleteSelectionRequest {
  const factory _DeleteSelectionRequest(
          {@JsonKey(name: "selection_id") required final int selectionId}) =
      _$_DeleteSelectionRequest;

  @override
  @JsonKey(name: "selection_id")
  int get selectionId;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteSelectionRequestCopyWith<_$_DeleteSelectionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

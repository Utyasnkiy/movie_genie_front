import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/response_picture/response_picture.dart';

part 'selection.freezed.dart';

part 'selection.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
  equal: true,
  copyWith: true,
)
class Selection with _$Selection {
  const factory Selection({
    required int id,
    required int owner,
    required String tag,
    required String name,
    @JsonKey(name: "picture_id", includeIfNull: false)
    int? pictureId,
    required List<Film> films,
    @JsonKey(includeIfNull: false,
        includeFromJson: false,
    includeToJson: true)
    String? picture,
  }) = _Selection;

  factory Selection.fromJson(Map<String, dynamic> json) =>
      _$SelectionFromJson(json);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Film && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id;
}

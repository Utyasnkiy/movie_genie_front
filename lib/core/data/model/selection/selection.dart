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
    required ResponsePicture responsePictureDto,
    required List<Film> films,
  }) = _Selection;

  factory Selection.fromJson(Map<String, dynamic> json) =>
      _$SelectionFromJson(json);

}

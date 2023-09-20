import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_genie/core/data/model/film/film.dart';

part 'save_selection.freezed.dart';
part 'save_selection.g.dart';

@Freezed(
  toJson: true,
  fromJson: false,
)
class SaveSelectionRequest with _$SaveSelectionRequest {
  const factory SaveSelectionRequest({
    required String tag,
    required String name,
    required int owner,
    required List<Film> films,
    @JsonKey(includeIfNull: false)
    String? picture,
  }) = _SaveSelection;
}

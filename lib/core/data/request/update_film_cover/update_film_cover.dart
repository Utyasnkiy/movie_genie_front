import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_film_cover.freezed.dart';
part 'update_film_cover.g.dart';

@Freezed(
  toJson: true,
  fromJson: false,
)
class UpdateFilmCover with _$UpdateFilmCover {
  const factory UpdateFilmCover({
    required String pictureType,
    required String picture,
    @JsonKey(name: "film_id") required int filmId,
  }) = _UpdateFilmCover;
}

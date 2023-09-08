import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_film.freezed.dart';
part 'delete_film.g.dart';

@Freezed(toJson: true, fromJson: false)
class DeleteFilm with _$DeleteFilm {
  const factory DeleteFilm({
    @JsonKey(name: "film_id") required int filmId,
  }) = _DeleteFilm;
}

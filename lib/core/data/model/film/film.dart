// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_genie/core/data/model/response_picture/response_picture.dart';

part 'film.freezed.dart';
part 'film.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
  equal: true,
  copyWith: true,
)
class Film with _$Film {
  const factory Film({
    required int id,
    required String title,
    required String country,
    required String director,
    required ResponsePicture responsePictureDto,
    required int fees,
    required String plot,
    @JsonKey(name: "release_year") required int releaseYear,
  }) = _Film;

  factory Film.fromJson(Map<String, dynamic> json) => _$FilmFromJson(json);

}

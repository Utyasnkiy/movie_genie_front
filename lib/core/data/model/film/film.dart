// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_genie/core/data/model/rating/rating.dart';
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
    @JsonKey(name: "picture_id")
    required int pictureId,
    required int fees,
    required String plot,
    @JsonKey(includeIfNull: false,
    includeFromJson: false,
    includeToJson: false)
    String? picture,
    @JsonKey(name: "release_year") required int releaseYear,
  }) = _Film;

  factory Film.fromJson(Map<String, dynamic> json) => _$FilmFromJson(json);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Film && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id;
}

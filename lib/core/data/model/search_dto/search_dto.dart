import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_genie/core/data/model/film/film.dart';

part 'search_dto.freezed.dart';
part 'search_dto.g.dart';

@freezed
class SearchDto with _$SearchDto {
  const factory SearchDto({
    required List<Film> title_films,
    required List<Film> plot_films,
}) = _SearchDto;

  factory SearchDto.fromJson(Map<String, dynamic> json) =>
      _$SearchDtoFromJson(json);
}

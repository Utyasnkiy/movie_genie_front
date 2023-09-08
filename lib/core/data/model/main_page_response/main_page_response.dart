import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/selection/selection.dart';

part 'main_page_response.freezed.dart';
part 'main_page_response.g.dart';

@Freezed(fromJson: true, toJson: false)
class MainPageResponse with _$MainPageResponse {
  const factory MainPageResponse(
      {required List<Film> films,
      required List<Selection> selections}) = _MainPageResponse;

  factory MainPageResponse.fromJson(Map<String, dynamic> json) =>
      _$MainPageResponseFromJson(json);
}

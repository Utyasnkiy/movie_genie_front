import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating.freezed.dart';
part 'rating.g.dart';

@freezed
class Rating with _$Rating {

  const factory Rating({
    @JsonKey(name: "film_id")
    required int filmId,
    @JsonKey(name: "value")
    required double value,
}) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

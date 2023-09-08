import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'response_picture.g.dart';

part 'response_picture.freezed.dart';


@Freezed(toJson: true, fromJson: true)
class ResponsePicture with _$ResponsePicture {
  const factory ResponsePicture({
    @JsonKey(name: "picture_type")
    required String pictureType,
    //Unit8List, List<String>, List<int> bytes

    required String data,
  }) = _ResponsePicture;

  factory ResponsePicture.fromJson(Map<String, dynamic> json) =>
      _$ResponsePictureFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_selection_cover.freezed.dart';
part 'update_selection_cover.g.dart';

@Freezed(
  toJson: true,
  fromJson: false,
)
class UpdateSelectionCoverRequest with _$UpdateSelectionCoverRequest {
  const factory UpdateSelectionCoverRequest({
    // [PNG, JPEG]
    @JsonKey(name: "picture_type", defaultValue: "PNG")
    @Default("JPG")
    String pictureType,
    required String picture,
    @JsonKey(name: "selection_id") required int selectionId,
  }) = _UpdateSelectionCoverRequest;
}

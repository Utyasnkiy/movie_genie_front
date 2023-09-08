// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_selection.freezed.dart';
part 'delete_selection.g.dart';

@Freezed(toJson: true, fromJson: false)
class DeleteSelectionRequest with _$DeleteSelectionRequest {
  const factory DeleteSelectionRequest({
    @JsonKey(name: "selection_id") required int selectionId,
  }) = _DeleteSelectionRequest;
}

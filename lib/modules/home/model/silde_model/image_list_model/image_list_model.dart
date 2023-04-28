import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_list_model.freezed.dart';
part 'image_list_model.g.dart';

@freezed
class ImageList with _$ImageList {
  factory ImageList({
    int? id,
    String? image,
  }) = _ImageList;

  factory ImageList.fromJson(Map<String, dynamic> json) =>
      _$ImageListFromJson(json);
}

import 'package:flutter_firebase/modules/home/model/silde_model/image_list_model/image_list_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'slide_model.freezed.dart';
part 'slide_model.g.dart';

@freezed
class SlideShowModel with _$SlideShowModel {
  factory SlideShowModel({
    int? id,
    List<ImageList>? image,
    @JsonKey(name: 'isEnable') bool? isEnable,
    String? title,
  }) = _SlideShowModel;

  factory SlideShowModel.fromJson(Map<String, dynamic> json) =>
      _$SlideShowModelFromJson(json);
}

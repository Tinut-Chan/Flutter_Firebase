// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slide_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SlideShowModel _$$_SlideShowModelFromJson(Map<String, dynamic> json) =>
    _$_SlideShowModel(
      id: json['id'] as int?,
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => ImageList.fromJson(e as Map<String, dynamic>))
          .toList(),
      isEnable: json['isEnable'] as bool?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$_SlideShowModelToJson(_$_SlideShowModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'isEnable': instance.isEnable,
      'title': instance.title,
    };

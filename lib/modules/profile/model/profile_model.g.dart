// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModel _$$_ProfileModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileModel(
      id: json['id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      age: json['age'] as int?,
      phoneNumber: json['phone_number'] as String?,
      photo: json['photo'] as String?,
      relation: json['relation'] as String?,
    );

Map<String, dynamic> _$$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'name': instance.name,
      'gender': instance.gender,
      'age': instance.age,
      'phone_number': instance.phoneNumber,
      'photo': instance.photo,
      'relation': instance.relation,
    };

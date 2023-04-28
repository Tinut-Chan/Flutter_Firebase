// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageList _$ImageListFromJson(Map<String, dynamic> json) {
  return _ImageList.fromJson(json);
}

/// @nodoc
mixin _$ImageList {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageListCopyWith<ImageList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageListCopyWith<$Res> {
  factory $ImageListCopyWith(ImageList value, $Res Function(ImageList) then) =
      _$ImageListCopyWithImpl<$Res, ImageList>;
  @useResult
  $Res call({int? id, String? image});
}

/// @nodoc
class _$ImageListCopyWithImpl<$Res, $Val extends ImageList>
    implements $ImageListCopyWith<$Res> {
  _$ImageListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageListCopyWith<$Res> implements $ImageListCopyWith<$Res> {
  factory _$$_ImageListCopyWith(
          _$_ImageList value, $Res Function(_$_ImageList) then) =
      __$$_ImageListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? image});
}

/// @nodoc
class __$$_ImageListCopyWithImpl<$Res>
    extends _$ImageListCopyWithImpl<$Res, _$_ImageList>
    implements _$$_ImageListCopyWith<$Res> {
  __$$_ImageListCopyWithImpl(
      _$_ImageList _value, $Res Function(_$_ImageList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_ImageList(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageList implements _ImageList {
  _$_ImageList({this.id, this.image});

  factory _$_ImageList.fromJson(Map<String, dynamic> json) =>
      _$$_ImageListFromJson(json);

  @override
  final int? id;
  @override
  final String? image;

  @override
  String toString() {
    return 'ImageList(id: $id, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageListCopyWith<_$_ImageList> get copyWith =>
      __$$_ImageListCopyWithImpl<_$_ImageList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageListToJson(
      this,
    );
  }
}

abstract class _ImageList implements ImageList {
  factory _ImageList({final int? id, final String? image}) = _$_ImageList;

  factory _ImageList.fromJson(Map<String, dynamic> json) =
      _$_ImageList.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_ImageListCopyWith<_$_ImageList> get copyWith =>
      throw _privateConstructorUsedError;
}

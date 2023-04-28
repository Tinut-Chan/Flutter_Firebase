// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slide_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SlideShowModel _$SlideShowModelFromJson(Map<String, dynamic> json) {
  return _SlideShowModel.fromJson(json);
}

/// @nodoc
mixin _$SlideShowModel {
  int? get id => throw _privateConstructorUsedError;
  List<ImageList>? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'isEnable')
  bool? get isEnable => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlideShowModelCopyWith<SlideShowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlideShowModelCopyWith<$Res> {
  factory $SlideShowModelCopyWith(
          SlideShowModel value, $Res Function(SlideShowModel) then) =
      _$SlideShowModelCopyWithImpl<$Res, SlideShowModel>;
  @useResult
  $Res call(
      {int? id,
      List<ImageList>? image,
      @JsonKey(name: 'isEnable') bool? isEnable,
      String? title});
}

/// @nodoc
class _$SlideShowModelCopyWithImpl<$Res, $Val extends SlideShowModel>
    implements $SlideShowModelCopyWith<$Res> {
  _$SlideShowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? isEnable = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<ImageList>?,
      isEnable: freezed == isEnable
          ? _value.isEnable
          : isEnable // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SlideShowModelCopyWith<$Res>
    implements $SlideShowModelCopyWith<$Res> {
  factory _$$_SlideShowModelCopyWith(
          _$_SlideShowModel value, $Res Function(_$_SlideShowModel) then) =
      __$$_SlideShowModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      List<ImageList>? image,
      @JsonKey(name: 'isEnable') bool? isEnable,
      String? title});
}

/// @nodoc
class __$$_SlideShowModelCopyWithImpl<$Res>
    extends _$SlideShowModelCopyWithImpl<$Res, _$_SlideShowModel>
    implements _$$_SlideShowModelCopyWith<$Res> {
  __$$_SlideShowModelCopyWithImpl(
      _$_SlideShowModel _value, $Res Function(_$_SlideShowModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? isEnable = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_SlideShowModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<ImageList>?,
      isEnable: freezed == isEnable
          ? _value.isEnable
          : isEnable // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SlideShowModel implements _SlideShowModel {
  _$_SlideShowModel(
      {this.id,
      final List<ImageList>? image,
      @JsonKey(name: 'isEnable') this.isEnable,
      this.title})
      : _image = image;

  factory _$_SlideShowModel.fromJson(Map<String, dynamic> json) =>
      _$$_SlideShowModelFromJson(json);

  @override
  final int? id;
  final List<ImageList>? _image;
  @override
  List<ImageList>? get image {
    final value = _image;
    if (value == null) return null;
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'isEnable')
  final bool? isEnable;
  @override
  final String? title;

  @override
  String toString() {
    return 'SlideShowModel(id: $id, image: $image, isEnable: $isEnable, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SlideShowModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.isEnable, isEnable) ||
                other.isEnable == isEnable) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_image), isEnable, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SlideShowModelCopyWith<_$_SlideShowModel> get copyWith =>
      __$$_SlideShowModelCopyWithImpl<_$_SlideShowModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SlideShowModelToJson(
      this,
    );
  }
}

abstract class _SlideShowModel implements SlideShowModel {
  factory _SlideShowModel(
      {final int? id,
      final List<ImageList>? image,
      @JsonKey(name: 'isEnable') final bool? isEnable,
      final String? title}) = _$_SlideShowModel;

  factory _SlideShowModel.fromJson(Map<String, dynamic> json) =
      _$_SlideShowModel.fromJson;

  @override
  int? get id;
  @override
  List<ImageList>? get image;
  @override
  @JsonKey(name: 'isEnable')
  bool? get isEnable;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_SlideShowModelCopyWith<_$_SlideShowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

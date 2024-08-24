// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'music_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MusicInfo _$MusicInfoFromJson(Map<String, dynamic> json) {
  return _MusicInfo.fromJson(json);
}

/// @nodoc
mixin _$MusicInfo {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get composer => throw _privateConstructorUsedError;
  String get effector => throw _privateConstructorUsedError;
  String get bpm => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get chain => throw _privateConstructorUsedError;
  String get coverImage => throw _privateConstructorUsedError;
  String get patternImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MusicInfoCopyWith<MusicInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicInfoCopyWith<$Res> {
  factory $MusicInfoCopyWith(MusicInfo value, $Res Function(MusicInfo) then) =
      _$MusicInfoCopyWithImpl<$Res, MusicInfo>;
  @useResult
  $Res call(
      {int id,
      String title,
      String composer,
      String effector,
      String bpm,
      String date,
      String chain,
      String coverImage,
      String patternImage});
}

/// @nodoc
class _$MusicInfoCopyWithImpl<$Res, $Val extends MusicInfo>
    implements $MusicInfoCopyWith<$Res> {
  _$MusicInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? composer = null,
    Object? effector = null,
    Object? bpm = null,
    Object? date = null,
    Object? chain = null,
    Object? coverImage = null,
    Object? patternImage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      composer: null == composer
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as String,
      effector: null == effector
          ? _value.effector
          : effector // ignore: cast_nullable_to_non_nullable
              as String,
      bpm: null == bpm
          ? _value.bpm
          : bpm // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      patternImage: null == patternImage
          ? _value.patternImage
          : patternImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MusicInfoImplCopyWith<$Res>
    implements $MusicInfoCopyWith<$Res> {
  factory _$$MusicInfoImplCopyWith(
          _$MusicInfoImpl value, $Res Function(_$MusicInfoImpl) then) =
      __$$MusicInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String composer,
      String effector,
      String bpm,
      String date,
      String chain,
      String coverImage,
      String patternImage});
}

/// @nodoc
class __$$MusicInfoImplCopyWithImpl<$Res>
    extends _$MusicInfoCopyWithImpl<$Res, _$MusicInfoImpl>
    implements _$$MusicInfoImplCopyWith<$Res> {
  __$$MusicInfoImplCopyWithImpl(
      _$MusicInfoImpl _value, $Res Function(_$MusicInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? composer = null,
    Object? effector = null,
    Object? bpm = null,
    Object? date = null,
    Object? chain = null,
    Object? coverImage = null,
    Object? patternImage = null,
  }) {
    return _then(_$MusicInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      composer: null == composer
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as String,
      effector: null == effector
          ? _value.effector
          : effector // ignore: cast_nullable_to_non_nullable
              as String,
      bpm: null == bpm
          ? _value.bpm
          : bpm // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      patternImage: null == patternImage
          ? _value.patternImage
          : patternImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MusicInfoImpl extends _MusicInfo {
  const _$MusicInfoImpl(
      {required this.id,
      required this.title,
      required this.composer,
      required this.effector,
      required this.bpm,
      required this.date,
      required this.chain,
      required this.coverImage,
      required this.patternImage})
      : super._();

  factory _$MusicInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MusicInfoImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String composer;
  @override
  final String effector;
  @override
  final String bpm;
  @override
  final String date;
  @override
  final String chain;
  @override
  final String coverImage;
  @override
  final String patternImage;

  @override
  String toString() {
    return 'MusicInfo(id: $id, title: $title, composer: $composer, effector: $effector, bpm: $bpm, date: $date, chain: $chain, coverImage: $coverImage, patternImage: $patternImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MusicInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.composer, composer) ||
                other.composer == composer) &&
            (identical(other.effector, effector) ||
                other.effector == effector) &&
            (identical(other.bpm, bpm) || other.bpm == bpm) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.chain, chain) || other.chain == chain) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.patternImage, patternImage) ||
                other.patternImage == patternImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, composer, effector,
      bpm, date, chain, coverImage, patternImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MusicInfoImplCopyWith<_$MusicInfoImpl> get copyWith =>
      __$$MusicInfoImplCopyWithImpl<_$MusicInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MusicInfoImplToJson(
      this,
    );
  }
}

abstract class _MusicInfo extends MusicInfo {
  const factory _MusicInfo(
      {required final int id,
      required final String title,
      required final String composer,
      required final String effector,
      required final String bpm,
      required final String date,
      required final String chain,
      required final String coverImage,
      required final String patternImage}) = _$MusicInfoImpl;
  const _MusicInfo._() : super._();

  factory _MusicInfo.fromJson(Map<String, dynamic> json) =
      _$MusicInfoImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get composer;
  @override
  String get effector;
  @override
  String get bpm;
  @override
  String get date;
  @override
  String get chain;
  @override
  String get coverImage;
  @override
  String get patternImage;
  @override
  @JsonKey(ignore: true)
  _$$MusicInfoImplCopyWith<_$MusicInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

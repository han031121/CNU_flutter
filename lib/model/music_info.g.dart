// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MusicInfoImpl _$$MusicInfoImplFromJson(Map<String, dynamic> json) =>
    _$MusicInfoImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      composer: json['composer'] as String,
      effector: json['effector'] as String,
      bpm: json['bpm'] as String,
      date: json['date'] as String,
      chain: json['chain'] as String,
      coverImage: json['coverImage'] as String,
      patternImage: json['patternImage'] as String,
    );

Map<String, dynamic> _$$MusicInfoImplToJson(_$MusicInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'composer': instance.composer,
      'effector': instance.effector,
      'bpm': instance.bpm,
      'date': instance.date,
      'chain': instance.chain,
      'coverImage': instance.coverImage,
      'patternImage': instance.patternImage,
    };

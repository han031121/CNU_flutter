import 'package:freezed_annotation/freezed_annotation.dart';

part 'music_info.freezed.dart';
part 'music_info.g.dart';

@freezed
class MusicInfo with _$MusicInfo {

  const factory MusicInfo({
    required int id,
    required String title,
    required String composer,
    required String effector,
    required String bpm,
    required String date,
    required String chain,
    required String coverImage,
    required String patternImage,
  }) = _MusicInfo;

  const MusicInfo._();

  factory MusicInfo.empty() {
    return const MusicInfo(
      id: 1,
      title: 'song',
      composer: 'han03',
      effector: 'han03',
      bpm: '200',
      date: '2003/11/21',
      chain: '2000',
      coverImage: '',
      patternImage: '',
    );
  }

  factory MusicInfo.fromJson(Map<String, Object?> json) =>
      _$MusicInfoFromJson(json);
}
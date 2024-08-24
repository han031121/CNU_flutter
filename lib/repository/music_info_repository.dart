import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:cnu_flutter/model/music_info.dart';
import 'package:cnu_flutter/provider/connection.dart';

class MusicInfoRepository{
  final _connection = Get.find<BaseController>();

  Future<Either<String,List<MusicInfo>>> getMusicList() async{
    try{
      const path = '/music_info';
      final res = await _connection.get(path);
      print(res.body);
      final json = _connection.getJsonMapOrCrash(res.body);
      final musicInfoList = (json["music_info"] as Iterable).map((e) => MusicInfo.fromJson(e)).toList();
      return right(musicInfoList);
    }
    catch(_){
      print(_);
      return left('failed.');
    }
  }

  Future<Either<String,MusicInfo>> getMusicInfo({required int id}) async{
    try{
      final path = '/music_info/$id';
      final res = await _connection.get(path);
      print(res.body);
      final json = _connection.getJsonMapOrCrash(res.body);
      final musicInformation = MusicInfo.fromJson(json);
      return right(musicInformation);
    }
    catch(_){
      print(_);
      return left('failed.');
    }
  }
}
import 'package:cnu_flutter/main.dart';
import 'package:cnu_flutter/model/music_info.dart';
import 'package:cnu_flutter/repository/music_info_repository.dart';
import 'package:get/get.dart';

class MainController extends GetxController{
  final _repo = Get.find<MusicInfoRepository>();
  final musicList = <MusicInfo>[].obs;

  Future<void> getMusicList() async{
    final res = await _repo.getMusicList();
    res.fold((l) => print(l), (r) => musicList.addAll(r));
  }

  @override
  void onInit() {
    super.onInit();
    getMusicList();
  }
}


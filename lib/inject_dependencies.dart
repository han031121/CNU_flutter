import 'package:get/get.dart';
import 'package:cnu_flutter/provider/connection.dart';
import 'package:cnu_flutter/repository/music_info_repository.dart';

import 'controller/bottom_navigation_bar_controller.dart';

Future<void> injectDependencies() async {
  Get.put<BottomNavigationBarController>(BottomNavigationBarController());
  Get.put<MusicInfoRepository>(MusicInfoRepository());
}
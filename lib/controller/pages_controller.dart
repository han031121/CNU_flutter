import 'package:cnu_flutter/main.dart';
import 'package:get/get.dart';

class PagesController extends GetxController{
  void onBottomTapped(int index){
    Get.offNamed(pages[index]);
  }
}


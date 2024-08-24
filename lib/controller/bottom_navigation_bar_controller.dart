import 'package:cnu_flutter/main.dart';
import 'package:get/get.dart';

class BottomNavigationBarController extends GetxController{
  void onBottomTapped(int index){
    Get.offNamed(pages[index]);
  }
}
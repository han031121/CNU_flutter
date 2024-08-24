import 'package:cnu_flutter/controller/main_controller.dart';
import 'package:get/get.dart';

class PagesBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(MainController());
  }
}
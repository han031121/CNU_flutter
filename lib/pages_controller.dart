import 'package:cnu_flutter/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class PagesController extends GetxController{
  void onBottomTapped(int index){
    Get.offNamed(pages[index]);
  }
}

class PagesBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(PagesController());
  }
}
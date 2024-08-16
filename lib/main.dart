import 'package:cnu_flutter/view/main_page.dart';
import 'package:cnu_flutter/controller/pages_controller.dart';
import 'package:cnu_flutter/bindings/pages_binding.dart';
import 'package:cnu_flutter/view/record_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//TODO : use enum instead of list (only for bottom navigation buttons)
const List<String> pages = [
  '/record','/'
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home: MainPage(),
      getPages: [
        GetPage(
          name: pages[0],
          page: () => const RecordPage(),
          binding: PagesBinding(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 200),
        ),
        GetPage(
          name: pages[1],
          page: () => MainPage(),
          binding: PagesBinding(),
        ),
      ],
    );
  }
}


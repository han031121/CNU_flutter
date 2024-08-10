import 'package:cnu_flutter/main_page.dart';
import 'package:cnu_flutter/pages_controller.dart';
import 'package:cnu_flutter/record_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          page: () => RecordPage(),
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


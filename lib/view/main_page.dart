import 'package:cnu_flutter/main.dart';
import 'package:cnu_flutter/view/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:cnu_flutter/controller/main_controller.dart';

import '../widgets/music_list.dart';

class MainPage extends GetView<MainController>{
  MainPage({super.key});
  @override
  final controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {},
        ),
        title: const Text(
          'SDVX info',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          MusicList(
            title: 'Song 1',
            composer: 'han03',
            effector: 'han03',
            bpm: '168~210',
            date: '2015/08/03',
            chain: '2125',
          ),
          MusicList(
            title: 'Song 2',
            composer: 'han03',
            effector: 'han03',
            bpm: '190',
            date: '2023/11/30',
            chain: '1775',
          ),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}


import 'package:cnu_flutter/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:cnu_flutter/pages_controller.dart';

class MainPage extends StatelessWidget{
  MainPage({super.key});

  final controller = Get.put(PagesController());

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
            date: '2015/08/03'
          ),
          MusicList(
              title: 'Song 2',
              composer: 'han03',
              effector: 'han03',
              bpm: '190',
              date: '2023/11/30'
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: controller.onBottomTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            activeIcon: Icon(Icons.format_list_bulleted_outlined),
            label: 'My Record',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home_outlined),
              label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            activeIcon: Icon(Icons.search_outlined),
            label: 'Search'
          ),
        ],
      ),
    );
  }
}

class MusicList extends StatelessWidget{
  final String title;
  final String composer;
  final String effector;
  final String bpm;
  final String date;

  MusicList({
    super.key,
    required this.title,
    required this.composer,
    required this.effector,
    required this.bpm,
    required this.date,
  });

  final controller = Get.find<PagesController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          Image.asset(
            'assets/images/image1.jpg',
            width: 100,
            height: 100,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 12,),
                    Text(
                      title,
                      style: const TextStyle(color: Colors.black, fontSize: 24),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(width: 20,),
                    Text(
                      'composer : $composer',
                      style: const TextStyle(color: Colors.black54, fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                    )
                  ]
                ),
                Row(
                  children: [
                    const SizedBox(width: 12,),
                    Text(
                        'bpm : $bpm',
                        style: const TextStyle(color: Colors.black54, fontSize: 12),
                        overflow: TextOverflow.ellipsis
                    ),
                    const SizedBox(width: 12,),
                    Text(
                        'effector : $effector',
                        style: const TextStyle(color: Colors.black54, fontSize: 12),
                        overflow: TextOverflow.ellipsis
                    ),
                    const SizedBox(width: 12,),
                    Text(
                        date,
                        style: const TextStyle(color: Colors.black54, fontSize: 12),
                        overflow: TextOverflow.ellipsis
                    )
                  ],
                ),
                Row(
                  //TODO : implement difficulty buttons
                  children: [
                    TextButton(
                      child: Text('dif 1'),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: Text('dif 2'),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: Text('dif 3'),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: Text('dif 4'),
                      onPressed: () {},
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
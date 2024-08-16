import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/pages_controller.dart';

class MusicList extends StatelessWidget{
  final String title;
  final String composer;
  final String effector;
  final String bpm;
  final String date;
  final star = false.obs;

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
          Flexible(
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
          Obx(()=>
            IconButton(
              icon: star.value==true?
                const Icon(Icons.star): const Icon(Icons.star_border),
              color: star.value==true?Colors.amber:Colors.grey,
              onPressed: (){
                if (star.value==true) {
                  star.value = false;
                } else {
                  star.value = true;
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
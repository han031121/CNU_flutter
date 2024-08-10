import 'package:cnu_flutter/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:cnu_flutter/pages_controller.dart';

class RecordPage extends StatelessWidget{
  RecordPage({super.key});

  final controller = Get.find<PagesController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {},
        ),
        title: const Text(
          'My Records',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Text('My Record Page'),
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
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../controller/bottom_navigation_bar_controller.dart';

class BottomBar extends GetView<BottomNavigationBarController>{
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar (
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
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatelessWidget{
  const MainPage({super.key});



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
        padding: const EdgeInsets.all(5),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Row(
            children: [
              Image.asset(
                'assets/images/image1.jpg',
                width: 100,
                height: 100,
              ),
              const Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '  Title',
                          style: TextStyle(color: Colors.black, fontSize: 24),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '  composer',
                          style: TextStyle(color: Colors.black54, fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                        )
                      ]
                    ),
                    Row(
                      children: [
                        Text(
                            '  bpm : ',
                            style: TextStyle(color: Colors.black54, fontSize: 12),
                            overflow: TextOverflow.ellipsis
                        ),
                        Text(
                            '  effector : ',
                            style: TextStyle(color: Colors.black54, fontSize: 12),
                            overflow: TextOverflow.ellipsis
                        ),
                        Text(
                            '  2024/08/02',
                            style: TextStyle(color: Colors.black54, fontSize: 12),
                            overflow: TextOverflow.ellipsis
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(//버튼으로 대체할 것
                          child: Text('  dif 1'),
                        ),
                        SizedBox(
                          child: Text('  dif 2'),
                        ),
                        SizedBox(
                          child: Text('  dif 3'),
                        ),
                        SizedBox(
                          child: Text('  dif 4'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        //options
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            activeIcon: Icon(Icons.format_list_bulleted_outlined),
            label: 'My Record'
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
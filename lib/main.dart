import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyWidget(
        name: 'product1',
        desc: 'this is product1. but this is product1, so it is product1.',
        myimage: 'assets/images/image1.jpg',
        liked: 101,
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final String name;
  final String desc;
  final String myimage;
  final int liked;

  const MyWidget({
    required this.name,
    required this.desc,
    required this.myimage,
    required this.liked
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'han03',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello',style: TextStyle(color: Colors.white70),),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(myimage)
                        )
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 250,
                        height: 30,
                        color: Colors.white60,
                        child: Text(
                            name,
                            style: const TextStyle(fontSize: 20,color: Colors.black87)
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 70,
                        color: Colors.white38,
                        child: Text(
                            desc,
                            style: const TextStyle(fontSize: 14,color: Colors.black54)
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 30,
                        height: 50,
                        child: const Icon(
                          Icons.favorite_outline,
                        )
                      ),
                      Container(
                          width: 30,
                          height: 50,
                          child: Text(
                            liked.toString(),
                            style: const TextStyle(fontSize: 14,color: Colors.black54),
                          )
                      )
                    ]
                  )
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
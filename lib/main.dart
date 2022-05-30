import 'dart:ui';

import 'package:flutter/material.dart';

const TextStyle _textStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);

class MaterialYou extends StatefulWidget {
  const MaterialYou({Key? key}) : super(key: key);

  @override
  State<MaterialYou> createState() => _MaterialYouState();
}

class _MaterialYouState extends State<MaterialYou> {
  int _currentIndex = 0;
  List<Widget> pages = const [
    Text('eco', style: _textStyle),
    Text('home', style: _textStyle),
    Text('person', style: _textStyle),
    Text('video', style: _textStyle),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Mapp'),
      ),
      body: Center(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.eco),
            icon: Icon(Icons.eco_outlined),
            label: 'eco',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outlined),
            label: 'person',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.video_camera_back),
            icon: Icon(Icons.video_camera_back_outlined),
            label: 'video',
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
          backgroundColor: Colors.teal,
        ),
        body: Center (
          child: Column(
            children: [
              Image(
                image: AssetImage('images/logo.png'),
              ),
              Text('Hello, World.'),
            ],
          )
        )
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

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
                image: NetworkImage('https://pixabay.com/get/ga276d18b076494e0e46b27af9d13a41e2b4c84150486cd586a7dda327d98ee99845b12471c28a8a0f70076d8b0bf97b3bc2c08fd5cb71fe8f80f3542cfb13e54e46ed74f3686a2ff9db96553a7c48d19_640.jpg'),
              ),
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

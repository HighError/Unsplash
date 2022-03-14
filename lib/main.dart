import 'package:flutter/material.dart';
import 'package:qulisoft/modules/unsplash.dart';
import 'package:qulisoft/screens/home_screen/home_screen.dart';
import 'package:qulisoft/screens/photo_screen/photo_screen.dart';

import 'classes/photo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:topplayer/About.dart';
import 'package:topplayer/HomePage.dart';
import 'package:topplayer/main.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'main',
    routes: {
      'HomePage': (context) => HomePage(),
      'main': (context) => TopPlayer(),
      'about' : (context) => AboutPage(),
    },
  ));
}

import 'package:flutter/material.dart';
import 'package:youtube/youtube_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YouTube',
      home: YoutubeMain(),
    );
  }
}

import 'package:flutter/material.dart';
import '../video_lists.dart';
import 'package:youtube/model/youtube_models.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VideoLists(
      listData: youtubeData,
    );
  }
}

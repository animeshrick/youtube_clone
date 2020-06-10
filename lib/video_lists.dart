import 'package:flutter/material.dart';

//import 'package:youtube/model/youtube_models.dart';
//import 'dart:convert';

class VideoLists extends StatelessWidget {
  final listData;

  const VideoLists({this.listData});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(listData[index].thumbNail),
                        fit: BoxFit.fill)),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(8.0),
                dense: true,
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(listData[index].channelAvatar),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(listData[index].title),
                ),
                subtitle: Text(
                    "${listData[index].channelTitle} . ${listData[index].viewCount} . ${listData[index].publishedTime} . ${listData[index].dislikeCount}"),
                trailing: Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: Icon(Icons.more_vert)),
              ),
            ],
          );
        }, //itemBuilder
        separatorBuilder: (context, index) => Divider(
              height: 1.0,
              color: Colors.grey,
            ),
        itemCount: listData.length);
  } //widget_builder
} //main_class

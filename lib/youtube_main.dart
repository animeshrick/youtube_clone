import 'package:flutter/material.dart';
import 'package:youtube/screens/home.dart';

class YoutubeMain extends StatefulWidget {
  @override
  _YoutubeMainState createState() => _YoutubeMainState();
}

class _YoutubeMainState extends State<YoutubeMain> {
  int _currentIndex = 0;

  onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> screens = [
    HomeScreen(),
    //Center(child: Text("Home"),),
    Center(child: Text("Trending")),
    Center(child: Text("Subscription")),
    Center(child: Text("Inbox")),
    Center(child: Text("Library")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Image.asset(
          'images/youtube.jpg',
          width: 150.0,
          height: 50.0,
        ),
        //title: Text("YouTube"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          onTap: onTapped,
          items: [
            BottomNavigationBarItem(
                title: Text("Home"), icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                title: Text("Trending"), icon: Icon(Icons.whatshot)),
            BottomNavigationBarItem(
                title: Text("Subscriptions"), icon: Icon(Icons.subscriptions)),
            BottomNavigationBarItem(
                title: Text("Inbox"), icon: Icon(Icons.mail)),
            BottomNavigationBarItem(
                title: Text("Library"), icon: Icon(Icons.video_library)),
          ]),
    );
  } //Widget builder
} //main class

import 'package:beebom_clone/pages/articles_page.dart';
import 'package:beebom_clone/pages/profile_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _buildTabBar() {
    return TabBar(
      tabs: <Widget>[
        Tab(
          child: Icon(Icons.description, size: 30.0),
        ),
        Tab(
          child: Icon(Icons.videocam, size: 30.0),
        ),
        Tab(
          child: Icon(Icons.person, size: 30.0),
        ),
      ],
    );
  }

  _buildTabBarViews() {
    return TabBarView(
      children: <Widget>[
        ArticlesPage(),
        Container(
          child: Text('Page 2'),
        ),
        ProfilePage()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        backgroundColor: Color(0xFF0E0E0E),
        appBar: AppBar(
          flexibleSpace: SafeArea(
            child: _buildTabBar(),
          ),
        ),
        body: _buildTabBarViews(),
      ),
      length: 3,
    );
  }
}

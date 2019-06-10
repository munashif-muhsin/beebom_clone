import 'package:beebom_clone/pages/articles_page.dart';
import 'package:beebom_clone/pages/profile_page.dart';
import 'package:beebom_clone/pages/videos_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
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

  Widget _buildTabBarViews() {
    return TabBarView(
      controller: _tabController,
      children: <Widget>[ArticlesPage(_openVideosTab), VideosPage(), ProfilePage()],
    );
  }

  void _openVideosTab() {
    _tabController.animateTo(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E0E0E),
      appBar: AppBar(
        flexibleSpace: SafeArea(
          child: _buildTabBar(),
        ),
      ),
      body: _buildTabBarViews(),
    );
  }
}

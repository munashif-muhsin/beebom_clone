import 'package:beebom_clone/models/video_item.dart';
import 'package:beebom_clone/widgets/video_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:beebom_clone/dummy_data.dart';

class VideosPage extends StatefulWidget {
  @override
  _VideosPageState createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  final List<VideoItem> videoItems = videoList;

  Widget _buildVideoGridItem(int index) {
    return VideoGridItem(item: videoItems[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: GridView.builder(
        itemBuilder: (BuildContext context, int index) {
          return _buildVideoGridItem(index);
        },
        itemCount: videoItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: ((MediaQuery.of(context).size.width / 2) - 20) / 280,
        ),
      ),
    );
  }
}

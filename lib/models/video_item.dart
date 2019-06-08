import 'package:flutter/foundation.dart';

class VideoItem {
  final String date;
  final String name;
  final int likes;
  final int comments;
  final String image;

  VideoItem({
    @required this.date,
    @required this.name,
    @required this.likes,
    @required this.comments,
    @required this.image,
  });
}

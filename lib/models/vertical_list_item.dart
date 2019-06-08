import 'package:flutter/material.dart';

class VerticalListItem {
  final String name;
  final String image;
  final String time;
  final int likes;
  final int id;
  final String content;

  VerticalListItem({
    @required this.name,
    @required this.image,
    @required this.time,
    @required this.likes,
    @required this.id,
    @required this.content
  });
}

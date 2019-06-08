import 'package:flutter/cupertino.dart';

class BookmarkItem {
  
  final String image;
  final String name;
  final String date;
  final int likes;

  BookmarkItem({
    @required this.image,
    @required this.name,
    @required this.date,
    @required this.likes
  });

}
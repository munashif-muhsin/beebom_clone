import 'package:beebom_clone/models/video_item.dart';
import 'package:beebom_clone/pages/video_page.dart';
import 'package:flutter/material.dart';

class VideoGridItem extends StatelessWidget {
  final VideoItem item;

  VideoGridItem({@required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (BuildContext context) => VideoPage(item))),
      child: Container(
        margin: EdgeInsets.all(5.0),
        height: 300,
        child: Column(
          children: <Widget>[
            ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(5.0),
              child: FadeInImage(
                image: NetworkImage(item.image),
                height: 200.0,
                fit: BoxFit.cover,
                alignment: Alignment.center,
                placeholder: AssetImage('assets/placeholder.gif'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10.0, 5.0, 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    item.date,
                    style: TextStyle(fontSize: 11.0, color: Colors.grey),
                  ),
                  SizedBox(height: 2.0),
                  Container(
                    height: 35.0,
                    child: Text(
                      item.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Icon(Icons.bookmark_border,
                            color: Colors.grey, size: 20.0),
                        splashColor: Colors.grey,
                        onTap: () {},
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.favorite_border,
                              color: Colors.grey, size: 20.0),
                          SizedBox(width: 5.0),
                          Text(item.likes.toString(),
                              style: TextStyle(color: Colors.grey)),
                          SizedBox(width: 10.0),
                          Icon(Icons.chat_bubble_outline,
                              color: Colors.grey, size: 20.0),
                          SizedBox(width: 5.0),
                          Text(item.comments.toString(),
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ArticlesPage extends StatefulWidget {
  @override
  _ArticlesPageState createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  List<Map<String, String>> horizontalList = [
    {
      'name': 'Google Maps',
      'image':
          'https://resizer.iproup.com/unsafe/640x/https://assets.iproup.com/assets/jpg/2019/02/2332_landscape.jpg?3.3.0'
    },
    {
      'name': 'Google Maps',
      'image':
          'https://resizer.iproup.com/unsafe/640x/https://assets.iproup.com/assets/jpg/2019/02/2332_landscape.jpg?3.3.0'
    },
    {
      'name': 'Google Maps',
      'image':
          'https://resizer.iproup.com/unsafe/640x/https://assets.iproup.com/assets/jpg/2019/02/2332_landscape.jpg?3.3.0'
    },
    {
      'name': 'Google Maps',
      'image':
          'https://resizer.iproup.com/unsafe/640x/https://assets.iproup.com/assets/jpg/2019/02/2332_landscape.jpg?3.3.0'
    },
    {'name': 'Google Maps', 'image': 'test'},
    {'name': 'Google Maps', 'image': 'test'},
    {'name': 'Google Maps', 'image': 'test'},
    {'name': 'Google Maps', 'image': 'test'},
  ].toList();

  Widget _buildHorizontalListItem(int index) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Container(
        width: 150,
        child: Stack(
          children: <Widget>[
            FadeInImage(
              image: NetworkImage(horizontalList[index]['image']),
              height: 120.0,
              width: 150.0,
              fit: BoxFit.cover,
              alignment: Alignment.center,
              placeholder: AssetImage('assets/placeholder.gif'),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 100,
                width: 150,
                padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 8.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0, 1],
                      colors: [Color(0x00000000), Color(0xAA000000)]),
                ),
                child: Text(
                  horizontalList[index]['name'],
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 120.0,
          child: ListView.builder(
            padding: EdgeInsets.all(10.0),
            scrollDirection: Axis.horizontal,
            itemCount: horizontalList.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildHorizontalListItem(index);
            },
          ),
        ),
      ],
    );
  }
}

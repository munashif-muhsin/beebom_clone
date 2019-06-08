import 'package:flutter/material.dart';
import '../models/horizontal_list_item.dart';

class HorizontalListCard extends StatelessWidget {

  final HorizontalListItem cardItem;

  HorizontalListCard({@required this.cardItem});

  @override
  Widget build(BuildContext context) {
    return Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            child: Container(
              width: 150,
              child: Stack(
                children: <Widget>[
                  FadeInImage(
                    image: NetworkImage(cardItem.image),
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
                        cardItem.name,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
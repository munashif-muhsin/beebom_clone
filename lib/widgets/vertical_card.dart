import 'package:beebom_clone/models/vertical_list_item.dart';
import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {
  final VerticalListItem cardItem;

  VerticalCard({@required this.cardItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        children: <Widget>[
          Hero(
            tag: cardItem.id,
            child: FadeInImage(
              image: NetworkImage(cardItem.image),
              height: 150.0,
              width: MediaQuery.of(context).size.width - 20,
              fit: BoxFit.cover,
              alignment: Alignment.center,
              placeholder: AssetImage('assets/placeholder.gif'),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            color: Colors.black45,
            child: Text(
              cardItem.name,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5),
            ),
          ),
          Container(
            color: Colors.black45,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  cardItem.time,
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: <Widget>[
                    ButtonTheme(
                      layoutBehavior: ButtonBarLayoutBehavior.constrained,
                      minWidth: 50,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: FlatButton(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.favorite_border, color: Colors.grey),
                            SizedBox(width: 5.0),
                            Text(
                              cardItem.likes.toString(),
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.bookmark_border, color: Colors.grey),
                        onPressed: () {},
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

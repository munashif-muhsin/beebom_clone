import 'package:beebom_clone/models/vertical_list_item.dart';
import 'package:beebom_clone/pages/article_single_page.dart';
import 'package:flutter/material.dart';

class BookmarkItemCard extends StatelessWidget {
  final VerticalListItem bookmarkedItem;

  BookmarkItemCard({@required this.bookmarkedItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => ArticleSinglePage(
                      article: bookmarkedItem,
                    )));
      },
      child: Card(
        color: Theme.of(context).primaryColor,
        child: Container(
          height: 120,
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Hero(
                tag: bookmarkedItem.id,
                child: FadeInImage(
                  image: NetworkImage(bookmarkedItem.image),
                  width: 100,
                  height: 100.0,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  placeholder: AssetImage('assets/placeholder.gif'),
                ),
              ),
              SizedBox(width: 5.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                width: MediaQuery.of(context).size.width - 155,
                child: Column(
                  children: <Widget>[
                    Text(
                      bookmarkedItem.name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            bookmarkedItem.time,
                            style:
                                TextStyle(color: Colors.grey, fontSize: 14.0),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(width: 5),
                              Text(
                                bookmarkedItem.likes.toString(),
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

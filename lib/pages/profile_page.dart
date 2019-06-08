import 'package:beebom_clone/dummy_data.dart';
import 'package:beebom_clone/models/bookmark_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<BookmarkItem> myBookmarks = bookmarks;

  Widget _buildBookmarkItem(int index) {
    return Card(
      color: Theme.of(context).primaryColor,
      child: Container(
        height: 120,
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            FadeInImage(
              image: NetworkImage(myBookmarks[index].image),
              width: 100,
              fit: BoxFit.cover,
              alignment: Alignment.center,
              placeholder: AssetImage('assets/placeholder.gif'),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              width: MediaQuery.of(context).size.width - 150,
              child: Column(
                children: <Widget>[
                  Text(
                    myBookmarks[index].name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    maxLines: 2,
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          myBookmarks[index].date,
                          style: TextStyle(color: Colors.grey, fontSize: 14.0),
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
                              myBookmarks[index].likes.toString(),
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
    );
  }

  Widget _buildTopHeader() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Theme.of(context).primaryColor,
      ),
      padding: EdgeInsets.all(10.0),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            clipBehavior: Clip.antiAlias,
            child: FadeInImage(
              image: NetworkImage(
                  'https://avatarfiles.alphacoders.com/131/131347.jpg'),
              height: 75.0,
              fit: BoxFit.cover,
              placeholder: AssetImage('assets/placeholder.gif'),
            ),
          ),
          SizedBox(width: 5.0),
          Text(
            'Tap Here to Sign in',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 10.0),
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.grey,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              _buildTopHeader(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.bookmark),
                    SizedBox(width: 5.0),
                    Text(
                      'My Bookmarks',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ]),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return _buildBookmarkItem(index);
            }, childCount: myBookmarks.length),
          )
        ],
      ),
    );
  }
}

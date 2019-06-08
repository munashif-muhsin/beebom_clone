import 'package:beebom_clone/models/vertical_list_item.dart';
import 'package:flutter/material.dart';

class ArticleSinglePage extends StatelessWidget {
  final VerticalListItem article;

  ArticleSinglePage({@required this.article});

  Widget _buildAppBar() {
    return SliverAppBar(
      expandedHeight: 256.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Hero(
          child: FadeInImage(
            image: NetworkImage(article.image),
            height: 300.0,
            fit: BoxFit.cover,
            placeholder: AssetImage('assets/placeholder.gif'),
          ),
          tag: article.id,
        ),
      ),
    );
  }

  Widget _buildAppContent() {
    return SliverList(
      delegate: SliverChildListDelegate([
        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                article.name,
                maxLines: 2,
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.1,
                    height: 1.1),
              ),
              SizedBox(height: 8.0),
              Text(
                article.time,
                maxLines: 1,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 10.0),
              Text(
                article.content,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    height: 1.4,
                    letterSpacing: 0.4),
              )
            ],
          ),
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[_buildAppBar(), _buildAppContent()],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.launch),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {},
              ),
              FlatButton(
                child: Row(children: <Widget>[
                  Icon(Icons.favorite_border),
                  SizedBox(width: 5.0),
                  Text(
                    article.likes.toString()
                  )
                ],),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.bookmark_border),
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}

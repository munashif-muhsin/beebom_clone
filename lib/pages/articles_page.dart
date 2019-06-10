import 'package:beebom_clone/dummy_data.dart';
import 'package:beebom_clone/models/horizontal_list_item.dart';
import 'package:beebom_clone/models/vertical_list_item.dart';
import 'package:beebom_clone/models/video_item.dart';
import 'package:beebom_clone/widgets/horizontal_list_card.dart';
import 'package:beebom_clone/widgets/vertical_card.dart';
import 'package:beebom_clone/widgets/video_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'article_single_page.dart';

class ArticlesPage extends StatefulWidget {
  Function openVideosTab;
  ArticlesPage(this.openVideosTab);

  @override
  _ArticlesPageState createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  List<HorizontalListItem> horizontalList = hList;
  List<VerticalListItem> verticalList = vList;
  List<VideoItem> videoItems = videoList;

  Widget _buildVerticalList(int index) {
    return GestureDetector(
      child: VerticalCard(cardItem: verticalList[index]),
      onTap: () {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) =>
                    ArticleSinglePage(article: verticalList[index])));
      },
    );
  }

  Widget _buildHorizontalListItem() {
    return Container(
      height: 110,
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: 5.0),
        physics: ClampingScrollPhysics(),
        itemCount: horizontalList.length,
        itemBuilder: (BuildContext context, int index) {
          return HorizontalListCard(cardItem: horizontalList[index]);
        },
      ),
    );
  }

  Widget _buildVideoCard() {
    return Container(
      color: Colors.white10,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Recent Videos',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              FlatButton(
                color: Colors.lightBlue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                child: Text(
                  'See All',
                  style: TextStyle(fontSize: 16.0),
                ),
                onPressed: () {
                  widget.openVideosTab();
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              VideoItemWidget(item: videoItems[0]),
              VideoItemWidget(item: videoItems[1])
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      scrollDirection: Axis.vertical,
      itemCount: verticalList.length > 3
          ? verticalList.length + 2
          : verticalList.length + 1,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          // Build horizontally scrolling list on top
          return _buildHorizontalListItem();
        } else if (index == 4) {
          // Buld Video cards in between list if main list items count > 3
          return _buildVideoCard();
        } else if (index > 4) {
          // Build Card item with list index varied becuase 2 additional items(List on top and video items) were added to list view
          return _buildVerticalList(index - 2);
        } else {
          // Build Card item with list index varied becuase 1 additional item(List on top) was added to list view
          return _buildVerticalList(index - 1);
        }
      },
    );
  }
}

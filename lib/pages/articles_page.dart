import 'package:beebom_clone/dummy_data.dart';
import 'package:beebom_clone/models/horizontal_list_item.dart';
import 'package:beebom_clone/models/vertical_list_item.dart';
import 'package:beebom_clone/widgets/horizontal_list_card.dart';
import 'package:beebom_clone/widgets/vertical_card.dart';
import 'package:flutter/material.dart';

class ArticlesPage extends StatefulWidget {
  @override
  _ArticlesPageState createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  List<HorizontalListItem> horizontalList = hList;
  List<VerticalListItem> verticalList = vList;

  Widget _buildVerticalList(int index) {
    return VerticalCard(cardItem: verticalList[index]);
  }

  Widget _buildHorizontalListItem() {
    return Container(
      height: 110,
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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10.0),
      scrollDirection: Axis.vertical,
      itemCount: verticalList.length + 1,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return _buildHorizontalListItem();
        } else {
          return _buildVerticalList(index - 1);
        }
      },
    );
  }
}

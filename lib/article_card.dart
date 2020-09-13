import 'package:flutter/material.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/cupertino.dart';

class ArticleCard extends StatelessWidget {
  String title;
  String description;
  String imgurl;
  String url;
  String source;
  ArticleCard(this.title,this.source, this.description, this.url, this.imgurl);
  @override
  Widget build(BuildContext context) {
    return ExpansionCard(
      // background: Image.network(
      //   imgurl,
      //   fit: BoxFit.cover,
      // ),
      title: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            Text(
              source,
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
          ],
        ),
      ),
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 7),
          child: Text(description,
              style: TextStyle(fontSize: 20, color: Colors.black)),
        )
      ],
    );
  }
}

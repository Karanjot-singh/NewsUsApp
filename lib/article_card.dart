import 'package:flutter/material.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/cupertino.dart';

class ArticleCard extends StatelessWidget {
  String title;
  String description;
  String imgurl;
  String url;
  ArticleCard(this.title, this.description, this.url, this.imgurl);
  @override
  Widget build(BuildContext context) {
    return ExpansionCard(
      background: Image.network(
        imgurl,
        fit: BoxFit.cover,
      ),
      title: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            Text(
              description,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 7),
          child: Text(description,
              style: TextStyle(fontSize: 20, color: Colors.white)),
        )
      ],
    );
  }
}

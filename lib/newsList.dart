import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class newsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewBuilder(),
    );
  }
}



class ListViewBuilder extends StatefulWidget {
  @override
  _ListViewBuilderState createState() => _ListViewBuilderState();
}



class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: Stack(
          children: [
            ExpansionCard(
              background: Image.asset(
                "gifs/planet.gif",
                fit: BoxFit.cover,
              ),
            title: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Header",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Sub",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 7),
                child: Text("Content goes over here !",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black)),
              )
            ],
          ),
    ]
      ),
      ),
    );
  }
}

/*
// ignore: camel_case_types
class newsListItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ExpansionCard(
          //gif: 'assets/animations/planets.gif',
          title: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Header",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Sub",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 7),
              child: Text("Content goes over here !",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black)),
            )
          ],
        ),
      ),
    );
  }
}

 */

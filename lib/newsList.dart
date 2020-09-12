import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class newsList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: newsListItems());
  }
}


// ignore: camel_case_types
class newsListItems extends StatelessWidget{
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
                        //fontFamily: 'BalooBhai',
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Sub",
                      style: TextStyle(
                        //fontFamily: 'BalooBhai', fontSize: 20, color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  child: Text("Content goes over here !",
                      style: TextStyle(
                        //fontFamily: 'BalooBhai',
                          fontSize: 20,
                          color: Colors.white)),
                )
              ],
            )));
  }
}
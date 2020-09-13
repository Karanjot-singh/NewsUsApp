import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newsList.dart';

class TileData {
  final String title;
  final Color bgColor;
  final Color textColor;

  TileData({
    this.title,
    this.bgColor = Colors.white,
    this.textColor = Colors.black,
  });
}

class Concentric extends StatelessWidget {
  final List<TileData> pages = [
    TileData(
      title: "International",
      textColor: Colors.white,
      bgColor: Color(0xffb1006a),
    ),
    TileData(
      title:"Finance",
      bgColor: Color(0xff00B147),
      textColor: Colors.white,
    ),
    TileData(
      title: "Sports",
      bgColor: Colors.white,
      textColor: Colors.black,
    ),
    TileData(
      title: "Local",
      bgColor: Color(0xFF3C4046), 
      textColor: Colors.white,
      )
  ];

  List<Color> get colors => pages.map((p) => p.bgColor).toList();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ConcentricPageView(
          colors: colors,
          opacityFactor: 1.0,
          scaleFactor: 0.0,
          radius: 250,
          curve: Curves.ease,
          duration: Duration(seconds: 3),
          verticalPosition: 0.9,
          direction: Axis.vertical,
          itemBuilder: (index, value) {
            TileData page = pages[index % pages.length];
            // For example scale or transform some widget by [value] param
            //            double scale = (1 - (value.abs() * 0.4)).clamp(0.0, 1.0);

            return Container(
            
                child: TileCard(page: page),
            );
          },
        ),
      ),
    );
  }
}

class TileCard extends StatelessWidget 
{
  final TileData page;

  const TileCard({
    Key key,
    @required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        children: <Widget>[
          Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                  child: Container(
                    //height: 10,
                    color: Colors.transparent,
                    child: _buildText(context)
                  ),
                ),

                //SizedBox(height: 80,),

                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  child: Container(
                    height: 550,
                      color: Colors.transparent,
                      child: Scaffold(
                        backgroundColor: Colors.transparent,
                        body: newsList(),
                      )
                    ),
                ),

        ],
      ),
    );
  }

  Widget _buildText(BuildContext context) {
    return Text(
      page.title,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: page.textColor
      ),
    );
  }
}

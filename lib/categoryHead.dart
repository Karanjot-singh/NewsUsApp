import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newsList.dart';

class TileData {
  final Color bgColor;
  final Color textColor;

  TileData({
    this.bgColor = Colors.white,
    this.textColor = Colors.black,
  });
}

class Concentric extends StatelessWidget {
  final List<TileData> pages = [
    TileData(
      textColor: Colors.white,
      bgColor: Color(0xffb1006a),
    ),
    TileData(
      bgColor: Color(0xff00B147),
      textColor: Colors.white,
    ),
    TileData(
      bgColor: Colors.white,
      textColor: Colors.black,
    ),
    TileData(
      bgColor: Color(0xFF3C4046),
      textColor: Colors.white
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

            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 25, left: 35, right: 35, bottom: 80),
                  child: Container(
                      color: Colors.transparent,
                      child: Scaffold(
                        backgroundColor: Colors.transparent,
                        body: newsList(),
                      )),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class TileCard extends StatelessWidget {
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
          //_buildPicture(context),
          SizedBox(height: 80),
          //_buildText(context),
        ],
      ),
    );
  }
}

import 'package:NewsUs/newsList.dart';
import 'package:flutter/material.dart';
import 'categoryHead.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NewsUs',
      // theme: ThemeData(
      //   scaffoldBackgroundColor: kBackgroundColor,
      //   primaryColor: kPrimaryColor,
      //   accentColor: kAccentColor,
      //   textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: newsList(),
      //Concentric(),
    );
  }
}

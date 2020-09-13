import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../article_card.dart';
import 'package:firebase_database/firebase_database.dart';

//https://www.youtube.com/watch?v=DqJ_KjFzL9I&ab_channel=GoogleDevelopers

class Data extends StatefulWidget {
  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  final dbRef = FirebaseDatabase.instance.reference().child("sports");
  List<Map<dynamic, dynamic>> lists = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //   body: StreamBuilder(
        //     stream: FirebaseFirestore.instance.collection('Articles').snapshots(),
        //     builder: (context, snapshot) {
        //       if(!snapshot.hasData) return const Text("Loading...");
        //       return ListView.builder(
        //   itemCount: snapshot.data.documents.length,
        //   itemBuilder: (context, index) {
        //     DocumentSnapshot ds = snapshot.data.documents[index];
        //     return Text("${ds.get('headline')} ${ds.get('url')}");
        //   }
        // );
        //       // ArticleCard();
        //     },
        //   ),
        body: StreamBuilder(
            stream: dbRef.onValue,
            builder: (context, AsyncSnapshot<Event> snapshot) {
              if (snapshot.hasData) {
                lists.clear();
                DataSnapshot dataValues = snapshot.data.snapshot;
                Map<dynamic, dynamic> values = dataValues.value;
                values.forEach((key, values) {
                  lists.add(values);
                });
                return new ListView.builder(
                    shrinkWrap: true,
                    itemCount: lists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Text("Headline: " + lists[index]["headline"]),
                            // Text("Url: " + lists[index]["url"]),
                            ArticleCard(lists[index]["headline"], lists[index]["source"],lists[index]["body"], lists[index]["url"], lists[index]["image_url"])
                          ],
                        ),
                      );
                    });
              }
              return CircularProgressIndicator();
            }));
  }
}

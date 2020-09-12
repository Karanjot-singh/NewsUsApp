import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../article_card.dart';

//https://www.youtube.com/watch?v=DqJ_KjFzL9I&ab_channel=GoogleDevelopers

class Data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Articles').snapshots(),
        builder: (context, snapshot) {
          if(!snapshot.hasData) return const Text("Loading...");
          // else
          // ArticleCard();
        },
      ),
    );
  }
}

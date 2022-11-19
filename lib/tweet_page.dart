import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tweets_1/tweet_card.dart';

class TweetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Twitter"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TweetCard(
                name: "Elon Musk",
                handle: "@elonmusk",
                tweet: "Comedy is now legal on Twitter"),
            TweetCard(
                name: "Elon Musk2",
                handle: "@elonmusk2",
                tweet: "I've been using Vim for 2 years now"),
          ],
        ));
  }
}

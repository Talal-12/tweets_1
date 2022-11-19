import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TweetCard extends StatelessWidget {
  final String name;
  final String handle;
  final String tweet;

  TweetCard({required this.name, required this.handle, required this.tweet});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/musk.jpg"),
                  radius: 35,
                ),
              ),
              Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(handle),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 29),
                  child: Text(
                    tweet,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Text(
                    "5:16 PM . 2022-10-28 .",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text(
                    "Twitter for iPhone",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 2, 177, 220)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

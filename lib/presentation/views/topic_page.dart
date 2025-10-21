import 'package:flutter/material.dart';
import 'package:schoolhub_flutter/data/model/topic.dart';

class TopicPage extends StatelessWidget {
  const TopicPage({super.key, required this.topic});

  final TopicModel topic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              topic.name,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Ink(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: Text(
                  "Create Drill",
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:schoolhub_flutter/data/model/topic.dart';

class TopicListing extends StatelessWidget {
  const TopicListing({super.key, required this.topics});

  final List<TopicModel> topics;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return InkWell(
            child: Ink(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                topics[index].name,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20,
          );
        },
        itemCount: 10);
  }
}

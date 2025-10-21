import 'package:flutter/material.dart';

class TopicListing extends StatelessWidget {
  const TopicListing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return InkWell(
            child: Ink(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "Topic",
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

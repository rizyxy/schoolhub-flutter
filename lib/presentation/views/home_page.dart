import 'package:flutter/material.dart';
import 'package:schoolhub_flutter/presentation/widgets/subject/subject_bloc_consumer.dart';
import 'package:schoolhub_flutter/presentation/widgets/subject/subject_listing.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              "SchoolHub",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: SubjectBlocConsumer())
          ],
        ),
      )),
    );
  }
}

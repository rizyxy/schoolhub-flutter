import 'package:flutter/material.dart';
import 'package:schoolhub_flutter/data/model/drill.dart';

class DrillPage extends StatelessWidget {
  const DrillPage({super.key, required this.drill});

  final DrillModel drill;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[Text(drill.id.toString())],
        ),
      )),
    );
  }
}

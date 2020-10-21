import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questiontext;
  Question(this.questiontext);
  @override
  Widget build(BuildContext context) {
    return Text(
      questiontext,
      style: TextStyle(fontSize: 28),
    );
  }
}

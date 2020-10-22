import 'package:flutter/material.dart';
import './question.dart';
import'./answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionindex = 0;
  void _answerquestion() {
    setState(() {
      _questionindex = _questionindex + 1;
    });
    print(_questionindex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My first app',
          ),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionindex],
            ),

            Answer(_answerquestion),
            Answer(_answerquestion),
            Answer(_answerquestion),
          ],
        ),
      ),
    ); // scaffold
  }
}

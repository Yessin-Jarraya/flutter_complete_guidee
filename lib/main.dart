import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'what\'s your favorite color',
      'answers': ['Black', 'Red', 'Blue', 'Green'],
    },
    {
      'questionText': 'what\'s your favorite animal',
      'answers': ['Tiger', 'Rabbit', 'Kakarot', 'Goat'],
    },
    {
      'questionText': 'what\'s your favorite Instructor',
      'answers': ['Maax', 'Max', 'MAAAX', 'Max'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < _questions.length) {
      print("We have more questions ");
    } else {
      print('No more questions!');
    }
    print(_questionIndex);
    print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion:_answerQuestion,questions: _questions,questionIndex:_questionIndex)
            : Result(),
      ),
    );
  }
}

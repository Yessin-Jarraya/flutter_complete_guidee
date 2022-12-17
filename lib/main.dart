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
      'answers': [
        {'text': 'Black','score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 1},
        {'text': 'green', 'score': 3},
        {'text': 'white', 'score': 0}
      ],
    },
    {
      'questionText': 'what\'s your favorite animal',
      'answers': [
        {'text': 'Tiger', 'score': 7},
        {'text': 'Rabbit', 'score': 0},
        {'text': 'Snake', 'score': 15},
        {'text': 'Goat', 'score': 1},
        {'text': 'Wolf', 'score': 10},
      ],
    },
    {
      'questionText': 'what\'s your favorite Food',
      'answers': [
        {'text': 'Pizza', 'score': 10,},
        {'text': 'Lasagne', 'score': 10,},
        {'text': 'Fruits & Veggies', 'score': 0,},
        {'text': 'Rice', 'score': 1,},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;

    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
            ? Quiz(
            questions: _questions,
                answerQuestion:  _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}

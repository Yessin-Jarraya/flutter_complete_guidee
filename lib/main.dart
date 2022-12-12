import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion(){
    print('Answer Chosen!');
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color',
      'what\'s your favorite animal',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: Column(
            children: [
              Text('The Question!'),
             ElevatedButton(
                child: Text('Answer1'),
                onPressed: answerQuestion,
              ),
              ElevatedButton(
                child: Text('Answer1'),
                onPressed: answerQuestion,
              ),
              ElevatedButton(
                child: Text('Answer1'),
                onPressed: ()=>print("Nice One"),
              ),
            ],
          )),
    );
  }
}

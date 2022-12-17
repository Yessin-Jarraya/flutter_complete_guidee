import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function  resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'Congratulations on finishing! ';
    if (resultScore <= 10) {
      resultText = 'You are an innocent soul';
    } else if (resultScore <= 25) {
      resultText = 'You seem a bit rough but deep down you are pure';
    } else
      resultText =
          'People might think that you are evil .. But deep down you are a good sool';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign:  TextAlign.center,
          ),
          ElevatedButton(child: Text('Restart Quiz!'),onPressed:resetHandler,)
        ],
      ),
    );
  }
}

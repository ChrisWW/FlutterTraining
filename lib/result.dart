import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 14) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 24) {
      resultText = 'Pretty good';
    } else if (resultScore <= 30) {
      resultText = 'Not bad';
    } else if (resultScore <= 40) {
      resultText = 'So baaadly:)';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      resultPhrase,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ));
  }
}

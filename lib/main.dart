import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 3}
      ],
    },
    {
      'questionText': 'What\'s your favourite book?',
      'answers': [
        {'text': 'Harry Potter', 'score': 1},
        {'text': 'Everything about flutter', 'score': 1},
        {'text': 'Better than yesterday', 'score': 1},
        {'text': 'Cool and the gang', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 1}, {'text': 'Snake', 'score': 1},
        {'text': 'Dog', 'score': 2}, {'text': 'Cat', 'score': 3}
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else {
      print('End of the quizz');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quizzzz')),
        body: _questionIndex < (_questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(),
      ),
    );
  }
}

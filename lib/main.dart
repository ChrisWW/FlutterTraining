import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favourite book?',
      'answers': [
        'Harry Potter',
        'Everything about flutter',
        'Better than yesterday',
        'Cool and the gang'
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Rabbit', 'Snake', 'Dog', 'Cat'],
    },
  ];

  void _answerQuestion() {
    if (_questionIndex < questions.length - 1) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else {
      Fluttertoast.showToast(
          msg: "We are out of questions, thank you for Quizz",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.white60,
          textColor: Colors.blueGrey,
          fontSize: 16.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quizzzz')),
        body: Column(children: [
          Question(questions[_questionIndex]['questionText']),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ]),
      ),
    );
  }
}

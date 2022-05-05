import 'package:flutter/material.dart';
import 'package:new_demo/quiz.dart';
import 'package:new_demo/result.dart';

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
  final _questions = const [
    {
      'questionText': 'What is your favorite car?',
      'answers': [
        {'AnswerText': 'Lamboghini', 'score': 25},
        {'AnswerText': 'Benz', 'score': 15},
        {'AnswerText': 'Rolls n Royce', 'score': 75},
        {'AnswerText': 'Escelade', 'score': 60}
      ]
    },
    {
      'questionText': 'What is your favorite colour?',
      'answers': [
        {'AnswerText': 'White', 'score': 50},
        {'AnswerText': 'Blue', 'score': 20},
        {'AnswerText': 'Red', 'score': 12},
        {'AnswerText': 'Gold', 'score': 35},
        {'AnswerText': 'black', 'score': 65}
      ]
    },
    {
      'questionText': 'What is your preffarble country?',
      'answers': [
        {'AnswerText': 'Japan', 'score': 85},
        {'AnswerText': 'Dubai', 'score': 65},
        {'AnswerText': 'Korea', 'score': 45},
        {'AnswerText': 'USA', 'score': 50}
      ]
    },
    {
      'questionText': 'Who is your favorite driver?',
      'answers': [
        {'AnswerText': 'Ommyjoh', 'score': 95},
        {'AnswerText': 'Mcheme', 'score': 85},
        {'AnswerText': 'Mtaalam', 'score': 80},
        {'AnswerText': 'Kinyozi', 'score': 75},
        {'AnswerText': 'Blue chawa', 'score': 70}
      ]
    },
  ];
  var _questIndex = 0;
  var _finalScore = 0;

  void _resertQuiz() {
    setState(() {
      _questIndex = 0;
      _finalScore = 0;
    });
  }

  void _answerQn(int score) {
    _finalScore += score;

    setState(() {
      _questIndex = _questIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ommyjoh App'),
        ),
        body: _questIndex < _questions.length
            ? Quiz(
                answerQn: _answerQn,
                questionindex: _questIndex,
                questions: _questions,
              )
            : Result(_finalScore, _resertQuiz),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:new_demo/answer.dart';
import 'package:new_demo/question.dart';

class Quiz extends StatelessWidget {
  final Function answerQn;
  final int questionindex;
  final List<Map<String, Object>> questions;

  Quiz(
      {@required this.answerQn,
      @required this.questionindex,
      @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionindex]['questionText']),
        ...(questions[questionindex]['answers'] as List<Map<String, Object>>).map((answers) {
          return Answer(() => answerQn(answers['score']), answers['AnswerText']);
        }).toList()
      ],
    );
  }
}

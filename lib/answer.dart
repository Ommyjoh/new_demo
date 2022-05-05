import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandling;
  final String answerText;

  Answer(this.answerHandling, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          child: Text(
            answerText,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          onPressed: answerHandling),
    );
  }
}

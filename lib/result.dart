import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resertHandler;

  Result(this.resultScore, this.resertHandler);

  String get ScoreMessage {
    String message;
    if (resultScore < 180) {
      message = "Your score is " + resultScore.toString() + " ,Bad at choices!";
    } else if (resultScore < 230) {
      message = "Your score is " + resultScore.toString() + " ,At least!";
    } else {
      message = "Your score is " + resultScore.toString() + " ,Good at choice!";
    }

    return message;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Center(
          child: Column(
            
        children: [
          Text(
            ScoreMessage,
            style: TextStyle(
                color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: resertHandler,
            child: Text('>Restart quiz<', style: TextStyle(fontSize: 15),),
            textColor: Colors.red,
          )
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resertHandler;

  Result(this.resultScore, this.resertHandler);

  String get ScoreMessage {
    String message;
    if (resultScore < 180) {
      message = "Hey, you are bad at choice!";
    } else if (resultScore < 230) {
      message = "At least you have some good choice!";
    } else {
      message = "You are good at choice!";
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
                color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: resertHandler,
            child: Text('>Restart quiz<', style: TextStyle(fontSize: 20),),
            textColor: Colors.red,
          )
        ],
      )),
    );
  }
}

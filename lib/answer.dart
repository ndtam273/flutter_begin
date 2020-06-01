import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
    );
  }
}
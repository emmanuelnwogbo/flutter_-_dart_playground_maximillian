import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  //passing data to a widget through its contructor below
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
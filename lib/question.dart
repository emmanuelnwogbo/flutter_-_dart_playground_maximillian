import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; //final tells Dart that the value will never change after its initialization in the constructor

  //passing data to a widget through its contructor below
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
      questionText, 
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
      ));
  }
}

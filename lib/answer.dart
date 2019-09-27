import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container (
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler
      )
    );
  }
}

/*class Answer extends StatelessWidget {
  final _answerQuestion;

  Answer(this._answerQuestion);

  final btnVals = [
    'Answer 1',
    'Answer 2',
    'Answer 3',
  ];

  Widget _returnAnswerBtns() {
    return new Column(children: btnVals.map((item) => Container(
      width: double.infinity,
      child: RaisedButton(
      child: Text(item),
      color: Colors.blue,
      onPressed: _answerQuestion
      ))).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        child: _returnAnswerBtns()
      )
    );
  }
}*/
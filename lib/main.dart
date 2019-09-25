import 'package:flutter/material.dart';

import './question.dart';

/*void main() {
  runApp(MyApp());
}*/

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex); 
  }

  @override //@override is provided by Dart not by Flutter
  Widget build(BuildContext context) {

    var questions = [
      'What\'s your favorite color',
      'What\'s your favorite animal',
      'What\'s your favorite movie'
    ];

    var btnVals = [
      'Answer 1',
      'Answer 2',
      'Answer 3',
    ];

    Widget _returnAnswerBtns() {
      return new Column(children: btnVals.map((item) => RaisedButton(child: Text(item), onPressed: _answerQuestion)).toList());
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text(
            'My first Flutter App',
          )),
          body: Column(
            children: [
              Question(questions[_questionIndex]),
              _returnAnswerBtns(),
              //RaisedButton(child: Text('Answer 2'), onPressed: _answerQuestion),
              //RaisedButton(child: Text('Answer 3'), onPressed: () => print('Answer is awesome yo')),
            ],
          )),
    );
  }
}

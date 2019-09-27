import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

    final questions = const [
      {
        'questionText': 'What\'s your favorite color',
        'answers': [
          'Black', 'Red', 'Green', 'White'
        ]
      },
      {
        'questionText': 'What\'s your favorite animal',
        'answers': [
          'Rabbit', 'Snake', 'Elephant', 'Lion'
        ]
      },
      {
        'questionText': 'Who\'s your favorite instructor',
        'answers': [
          'Max', 'Stephen', 'Emmanuel', 'Brad'
        ]
      },
    ];

  void _answerQuestion() {
    /*if (_questionIndex > 1) {
      return;
    }*/
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex); 
    if (_questionIndex < questions.length) {
        print('We have more questions');
    }
  }

  @override //@override is provided by Dart not by Flutter
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text(
            'My first Flutter App',
          )),
          body: _questionIndex < questions.length ? Column(
            children: [
              Question(questions[_questionIndex]['questionText']),
              ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
              //Answer(_answerQuestion),
              //RaisedButton(child: Text('Answer 2'), onPressed: _answerQuestion),
              //RaisedButton(child: Text('Answer 3'), onPressed: () => print('Answer is awesome yo')),
            ],
          ): Center(
            child: Text('You did it!'),
          ))
    );
  }
}

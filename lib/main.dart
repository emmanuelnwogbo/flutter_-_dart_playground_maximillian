import 'package:flutter/material.dart';

/*void main() {
  runApp(MyApp());
}*/

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex); 
  }

  @override //@override is provided by Dart not by Flutter
  Widget build(BuildContext context) {

    var questions = [
      'What\'s your favorite color',
      'What\'s your favorite animal'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text(
            'My first Flutter App',
          )),
          body: Column(
            children: [
              Text(questions[questionIndex]),
              RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
              RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
              RaisedButton(child: Text('Answer 3'), onPressed: () => print('Answer is awesome yo')),
            ],
          )),
    );
  }
}

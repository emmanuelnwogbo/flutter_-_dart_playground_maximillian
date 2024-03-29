import 'package:flutter/material.dart';

/*void main() {
  runApp(MyApp());
}*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            children: <Widget>[
              Text('the question'),
              RaisedButton(child: Text('Answer 1'), onPressed: null),
              RaisedButton(child: Text('Answer 2'), onPressed: null),
              RaisedButton(child: Text('Answer 3'), onPressed: null),
            ],
          )),
    );
  }
}

class Person {
  String name = 'Max';
  int age = 30;
  String height;
  String profession;
  
  //constructor below
  Person({String inputName, int age, String height = '6,2', String profession}) {
    name = inputName;
    this.age = age;
    this.height = height;
    this.profession = profession;
  }
  
  //another method of defining these above properties
  //Person({this.name, this.age = 30})
}

num addNumbers(num a, double b) {
  return a + b;
}

void main() {
  var p1 = Person(inputName: 'emmanuel', age: 26, profession: 'Software Engineer');
  print(p1.name);
  print(p1.age);
  print(p1.height);
  print(p1.profession);
  print(addNumbers(2, 5.6));
}

//stateless widget below

/*class MyApp extends StatelessWidget {

  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
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
}*/
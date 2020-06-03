import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

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
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 6},
        {'text': 'White', 'score': 9}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 12},
        {'text': 'Snake', 'score': -1},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 15}
      ],
    },
    {
      'questionText': 'Who\'s your favorite character?',
      'answers': [
        {'text': 'Ironman', 'score': 13},
        {'text': 'Batman', 'score': 7},
        {'text': 'DrStrange', 'score': -5},
        {'text': 'Deathpool', 'score': 30}
      ],
    },
  ];

  void _resetQuiz() {
    
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions");
    } else {
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex)
              : Result(_totalScore)),
    );
  }
}

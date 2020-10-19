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
    //TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your Partner\'s name?',
      'answers': [
        {'text': 'Sanjoli', 'score': 10},
        {'text': 'Dimple', 'score': 8},
        {'text': 'Trapti', 'score': 9},
        {'text': 'Muskan', 'score': 4},
        {'text': 'Amit', 'score': 2},
      ],
    },
    {
      'questionText': 'what\'s your  Partner\'s favourite animal?',
      'answers': [
        {'text': 'Tiger', 'score': 1},
        {'text': 'Lion', 'score': 1},
        {'text': 'Peacock', 'score': 1},
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 1},
      ],
    },
    {
      'questionText': 'what\'s your  Partner\'s favourite food',
      'answers': [
        {'text': 'Momos', 'score': 10},
        {'text': 'Noodles', 'score': 8},
        {'text': 'Dosa', 'score': 5},
        {'text': 'Burger', 'score': 7},
        {'text': 'Pizza', 'score': 9},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('How much you know your partner '),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

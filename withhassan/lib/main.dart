import 'package:flutter/material.dart';
import 'package:withhassan/quiz.dart';
import 'package:withhassan/result.dart';

main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int _totalScore = 0;
  int _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerquestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    print('bonton1111');
    print(_totalScore);
  }

  final List<Map<String, Object>> _question = [
    {
      'a': 'what your favorite color?',
      'b': [
        {'text': 'black', 'score': 10},
        {'text': 'yallow', 'score': 10},
        {'text': 'green', 'score': 10},
        {'text': 'orange', 'score': 10},
      ]
    },
    {
      'a': 'what your favorite car?',
      'b': [
        {'text': 'bmw', 'score': 10},
        {'text': 'mazda', 'score': 10},
        {'text': 'toyota', 'score': 10},
        {'text': 'dacia', 'score': 10},
      ]
    },
    {
      'a': 'what your favorite animal',
      'b': [
        {'text': 'rabbit', 'score': 10},
        {'text': 'tiger', 'score': 10},
        {'text': 'elephant', 'score': 10},
        {'text': 'lion', 'score': 10},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('heyy'),
        ),
        body: Container(
          //_questionIndex<_question.length?  // ida kan _questionIndex a9al min  question = Text('done'),
          child: _questionIndex < _question.length
              ? quiz.all(_question, answerquestion,
                  _questionIndex) //جلب من كلاس اخر باستعمال constructor
              : result(_resetQuiz, _totalScore), //text رسالة النهاية
        ),
      ),
    );
  }
}

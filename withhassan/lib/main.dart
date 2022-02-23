import 'package:flutter/material.dart';
import 'package:withhassan/question.dart';

import 'answer.dart';
import 'question.dart';

main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int _questionIndex = 0;

  void answerquestion() {
    if (_questionIndex == 1) {
      _questionIndex = -1;
    }

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    print('bonton1111');
  }

  get _question => [
        {
          'a': '142',
          'b': '152',
        },
        {
          'a': '144552',
          'b': '152',
        },
        {
          'a': '13332',
          'b': '152',
        },
      ];

  // final _question = [
  //   {},
  //   'ما هي الدول الأعلى استهلاكًا للدواجن؟',
  //   'ما هو أطول نهر في العالم',
  // ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('heyy'),
        ),
        body: Container(
          child: Column(
            children: [
              question(_question[_questionIndex]['a']),
              answer(answerquestion, 'answer1'),
              answer(answerquestion, 'answer2'),
              answer(answerquestion, 'answer3'),
            ],
          ),
        ),
      ),
    );
  }
}

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

  final List<Map<String, Object>> _question = [
    {
      'a': '142',
      'b': ['sdssdd', 'gffg', 'sdsdsd', 'gfggf']
    },
    {
      'a': '14782',
      'b': ['sdssdd', 'gffg', 'sdsdsd', 'gfggf']
    },
    {
      'a': '111111111142',
      'b': ['sdssdd', 'gffg', 'sdsdsd', 'gfggf']
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
          child: Column(
            children: [
              question(_question[_questionIndex]['a'].toString()),
              ...(_question[_questionIndex]['b'] as List<String>)
                  .map((b) {})()!
                  .toList(),
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

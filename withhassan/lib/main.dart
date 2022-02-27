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
  int _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  void answerquestion() {
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
      'b': ['hggggh', 'gffg', 'sdsdsd', 'gfggf']
    },
    {
      'a': '111111111142',
      'b': ['hghgfhgf', 'gffg', 'sdsdsd', 'gfggf']
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
              : result(_resetQuiz), //text رسالة النهاية
        ),
      ),
    );
  }
}

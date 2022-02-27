import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function() answerquestion;

  quiz.all(this.question, this.answerquestion, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            question[questionIndex]['a'].toString()), //كود لجلب الاسلة من الماب
        ...(question[questionIndex]['b'] as List<String>).map((b) {
          return answer(answerquestion, b); //كود لجلب الاجوبة من الماب
        }).toList(),
      ],
    );
  }
}

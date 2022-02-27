import 'package:flutter/material.dart';

class result extends StatelessWidget {



  String get restlPha {
    String resultText;

    return resultText;
  }








  //الفكشن لعمل reset
  final Function() q;

  final int resulScore;
  result(this.q, this.resulScore); //constructor

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Center(child: Text('$resulScore')),
          FlatButton(
              onPressed: q, child: Text('Try again ')), //ارجاع الاسلة الى الصفر
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class result extends StatelessWidget {
  //الفكشن لعمل reset
  final Function() q;
  result(this.q); //constructor

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Center(child: Text('done')),
          FlatButton(
              onPressed: q, child: Text('Try again ')), //ارجاع الاسلة الى الصفر
        ],
      ),
    );
  }
}

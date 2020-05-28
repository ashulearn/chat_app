import 'dart:ui';

import 'package:flutter/material.dart';

class Ques extends StatelessWidget {
  final String quesstring;
  Ques(this.quesstring);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      child: Text(
        quesstring,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

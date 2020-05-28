import 'package:flutter/material.dart';

import './ans.dart';
import './ques.dart';

class Quiz extends StatelessWidget {

  final List<Map<String,Object>> data;
  final int quesIndex;
  final Function answerQues;
  final int score;
  Quiz({this.data,this.quesIndex,this.answerQues,this.score});
  @override
  Widget build(BuildContext context) {
    return Column(
                children: <Widget>[
                  Ques(data[quesIndex]['ques']),
                  ...(data[quesIndex]['ans'] as List<Map<String,Object>>).map((answer) {
                    return Answer(() =>answerQues(answer["score"]), answer['text']);
                  }).toList()
                ],
              );
  }
}
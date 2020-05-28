import 'package:flutter/material.dart';

import './quiz.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var totalScore=0;
  var quesIndex = 0;
  void restartQuiz()
  {
    setState(() {
      totalScore=0;
      quesIndex=0;
    });
  }
  void answerQues(int score) {
    totalScore+=score;
    setState(() {
      quesIndex = quesIndex + 1;
    });

    print(quesIndex);
  }

  @override
  Widget build(BuildContext context) {
    var data = [
      {
        "ques": "what is your fav color",
        "ans": [{"text":"red","score":10}, {"text":"blue","score":7},{"text":"green","score":12}, {"text":"yellow","score":4}]
      },
      {
        "ques": "what is your fav animal",
        "ans": [{"text":"lion","score":10}, {"text":"tiger","score":20}, {"text":"deer","score":1}, {"text":"fox","score":5}]
      },
      {
        "ques": "what is your fav game",
        "ans": [{"text":"hockey","score":10},{"text":"cricket","score":20}, {"text":"vollyball","score":5}, {"text":"football","score":7}]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("this is appbar"),
        ),
        body: quesIndex < data.length
            ? Quiz(quesIndex: quesIndex,answerQues: answerQues,data: data,score: totalScore,)
            : Column(
              children: <Widget>[
                Center(
                    child: totalScore > 50 ? Text("you are good it!!") : Text("you are bad"),
                  ),
                  RaisedButton(child: Text("Resatrt Quiz"),onPressed: restartQuiz,)
              ],
            ),
      ),
    );
  }
}

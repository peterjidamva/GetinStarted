import 'package:flutter/material.dart';

import './input.dart';
import './submit.dart';

class QuestionA extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int i;
  final Function inputselect;
  QuestionA(
      {@required this.question, @required this.inputselect, @required this.i});
  @override
  Widget build(BuildContext context) {
    return Column(
      //the main part of an app
      //body is responsible main appearance of our app

      children: [
        //this is array of widgets
        Question(
            question[i]['questionA']), // text that apper on top of the body

        ...(question[i]['answerA'] as List<Map<String, Object>>)
            .map((listofAns) {
          return Input(
              () => inputselect(listofAns['score']), listofAns['text']);
        }).toList()
      ],
    ); //column a widget that control structure of of visible widget
  }
}

import 'package:flutter/material.dart'; //this package contains all the important framework materials
import 'package:getinstrtd/advice.dart';
//import 'package:getinstrtd/result.dart';
//import './submit.dart'; // submit file package we are importing
//we are importing whatever is in input file
import './question.dart';
//import './result.dart';
//import './Toyourresults.dart';
//import './advice.dart';
//import 'FOODsHop/FoodCollection.dart';
//import 'FOODsHop/FoodProduct.dart';
//import 'FOODsHop/SHopFood.dart';
//import 'FOODsHop/foodReview.dart';

void main() {
  runApp(
      _Driftapp()); //runApp it is a function that takes things from material app
}

class _Driftapp extends StatefulWidget {
  //driftappp widget has now changed to statefull widget
  //extentds provide us with accsess to widget in flutter

  @override
  State<StatefulWidget> createState() {
    //this show the widget driftstate is returned as statefull widget

    return _Driftstate();
  }
}

class _Driftstate extends State<_Driftapp> {
  var _i = 0;
  final _question = const [
    {
      'questionA': "How many Times you GET in instagram To look for GOODS?",
      'answerA': [
        {'text': "I HAVE NEVER ", 'score': 1},
        {'text': "JUST A FEW TIMES ", 'score': 5},
        {'text': "DAILY", 'score': 4},
        {'text': "NO IDEA ", 'score': 0}
      ],
    },
    {
      'questionA': "Do you trust instagram shops?",
      'answerA': [
        {'text': " I DONT ", 'score': 3},
        {'text': " I TRUST THEM ", 'score': 5},
        {'text': "NO IDEA", 'score': 0},
        {'text': "I TRUST SOME", 'score': 1},
      ],
    },
    {
      'questionA': "HAVE YOU EVER MADE PURCHASES ONLINE  ?",
      'answerA': [
        {'text': "I DONT TRUST THEM", 'score': 1},
        {'text': "NO IDEA", 'score': 0},
        {'text': "I HAVE BUT FEW TIMES", 'score': 3},
        {'text': "I HAVE BUT GOODS FROM ABROAD", 'score': 5},
      ],
    },
  ];

  var _sumofScore = 0;

  void _inputselect(int score) {
    _sumofScore += score;

    setState(() {
      _i = _i +
          1; //this implies the array of i elements will get incremented by 1
    });

    print("answer selected");
    //this does not get printed on the screen instead it shows that a certain button for a certain answer is clicked
    if (_i < _question.length) {
      print("we have more question");
    }
  }

  @override
  Widget build(BuildContext context) {
    //build is a method contained in a class

    return MaterialApp(
        //all it ever do is to return all of the important widgets we will ever use
        home: Scaffold(
            backgroundColor: Colors.white,

            //scafold is a class that provides us with widgets
            appBar: AppBar(
              backgroundColor: Colors
                  .blue, // the widget to display app bar at the top of app
              title: Text(//text  widget to display text
                  "KOmyH"), //texts that appear on the screen
            ),
            body: Center(
                child: Column(children: <Widget>[
              (_i < _question.length)
                  ? QuestionA(
                      question: _question, inputselect: _inputselect, i: _i)
                  : Advice(_sumofScore),
              // Image.asset("assets/drift.jpg"),
              //Align(
              // alignment: Alignment.bottomCenter,
              // child: FirstRoute(),
              // ),
            ]))));
  }
}

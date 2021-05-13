import 'package:flutter/material.dart';
//import 'package:getinstrtd/Toyourresults.dart';
import 'package:getinstrtd/eXtended.dart';
//import 'package:getinstrtd/pics.dart';
//import './pics.dart';
//import './result.dart';

class Advice extends StatelessWidget {
  final int resultscore;
  Advice(this.resultscore);

  String get resultPhrase {
    var resultText = "you made to a final point";
    if (resultscore == 0) {
      resultText = "On next survey better ive us your opinions";
    }

    if (resultscore <= 10 && resultscore >= 1) {
      resultText = 'Thanks for your Answers ,';
    }

    if (resultscore >= 11 && resultscore <= 15) {
      resultText = " I bet we have we can suprise you with our product ";
    }

    if (resultscore >= 16) {
      resultText = "Thanks for response look at our PRODUCT";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            //we are currently using this colum so we can add another widget at the end of this app

            children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Center(
              child: ElevatedButton(
                  child: Text("MORE INFO"),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => InputHeight()),
                    );
                  }))
        ]));
  }
}

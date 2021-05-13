import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //question widget has been created
  final String
      questionText; //final tells dart that value does not change after initialization

  Question(
      this.questionText); //this class tells that Question widgets takes strings
  @override
  Widget build(BuildContext context) {
    return Container(
      //container widget is important for holding all the following classes

      color: Colors.white, //this decorates the background of the question text
      width: double.infinity, //this is what help us align our text at centre
      child: Text(
        //text widget gives us the property of the contained texts in the widget
        questionText,
        style: TextStyle(
            fontSize:
                24.7, //specify the font siZe of a text we currently display
            color: Colors
                .black), //tells us the font and color of the question text
        textAlign: TextAlign
            .center, //to specify the position of the question on the screen
      ),
    );
  }
}

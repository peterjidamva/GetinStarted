import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final Function
      selected; // this function is created to get input of omnpressed
  final String answerBih;
  Input(this.selected,
      this.answerBih); //selected is get passed to input whenever called

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                    side: BorderSide(color: Colors.red))),
          ),
          child: Text(
            answerBih,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed:
              selected //selected function is what expected when button is pressed

          ),
    );
  }
}

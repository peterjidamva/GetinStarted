import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './result.dart';

// Create a Form widget.
class InputHeight extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<InputHeight> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  var rating = 0.0;
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,

            //scafold is a class that provides us with widgets
            appBar: AppBar(
              backgroundColor: Colors
                  .blue, // the widget to display app bar at the top of app
              title: Text(//text  widget to display text
                  "KOmyH"), //texts that appear on the screen
            ),
            body: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Slider(
                    value: rating,
                    onChanged: (newrating) {
                      setState(() => (rating = newrating));
                    },
                  ),
                  TextFormField(
                    // The validator receives the text that the user has entered.
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.bar_chart_outlined),
                      fillColor: Colors.green,
                      hintText: 'Rate our questions in a scale of 10',
                      labelText: "Rate US",
                    ),
                    validator: (String value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Respond';
                      } else
                        return null;
                    },

//                    validator: (value) {
                    //                    if (value == null || value.isEmpty) {
                    //                    return 'Please enter some text';
                    //                }
                    //              return null;
                    //          },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // background
                        // onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Processing Data')));

                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => MyStatefulWidget()),
                          );
                        }
                      },
                      child: Text('INPUT'),
                    ),
                  ),
                ],
              ),
            )));
  }
}

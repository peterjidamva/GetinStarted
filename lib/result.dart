import 'package:flutter/material.dart';
import 'package:getinstrtd/pics.dart';
import './pics.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your name',
                      labelText: 'Name',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter a phone number',
                      labelText: 'Phone',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.calendar_today),
                      hintText: 'Enter your date of birth',
                      labelText: 'Dob',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.assignment),
                      fillColor: Colors.blue,
                      hintText: 'Tell us would you like online SHOP',
                      labelText: 'Opinions',
                    ),
                    validator: (String value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter some texts';
                      } else
                        return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // background
                        // onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        // Validate will return true if the form is valid, or false if
                        // the form is invalid.
                        if (_formKey.currentState.validate()) {
                          // Process data.

                          //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          //     content: Text(
                          // 'Tuta kupa matokeo yako',
                          // style: TextStyle(fontSize: 16, color: Colors.white),
                          // )));

                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Pics()),
                          );
                        }
                      },
                      child: const Text(
                        'INPUT',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}

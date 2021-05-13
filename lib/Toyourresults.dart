import 'package:flutter/material.dart';
//void main() {
// runApp(MaterialApp(
//  title: 'Navigation Basics',
//home: FirstRoute(),
//));
//}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('KOmyH'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue, // background
            // onPrimary: Colors.white, // foreground
          ),
          child: Text('Have A Wide Look'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("KOmyH"),
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue, // background
              // onPrimary: Colors.white, // foreground
            ),
            child: Text('Go back!'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}

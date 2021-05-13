import 'package:flutter/material.dart';
//import 'package:getinstrtd/Toyourresults.dart';
//import './FOODsHop/FoodProduct.dart';
//import 'FOODsHop/SHopFood.dart';
import './FOODsHop/foodReview.dart';

class Pics extends StatelessWidget {
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
            body: //Container(
                Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  " A good ilustration of our app idea",
                ),
                Image.network(
                    "http://deo360.com/wp-content/uploads/2020/07/shop-app.jpg"),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                      child: Text("other options"),
                      // hoverColor: Colors.black26,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => FoodReview()),
                        );
                      }),
                )
              ],
            )));
  }
}

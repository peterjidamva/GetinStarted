import 'package:flutter/material.dart';

class FoodCollection extends StatelessWidget {
  final String nameOfood;
  final String id;
  final String description;
  final String imageOfood;

  FoodCollection(this.id, this.description, this.imageOfood, this.nameOfood);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      //basically grid tile enables us to display items in grid form

      child: Image.network(imageOfood),
      footer: GridTileBar(
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        backgroundColor: Colors.black87,
        title: Text(
          nameOfood,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

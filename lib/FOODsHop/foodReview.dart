import 'package:flutter/material.dart';
import './FoodProduct.dart';
import './FoodCollection.dart';

class FoodReview extends StatelessWidget {
  final List<FoodProduct> listOfthemProducts = [
    FoodProduct(
      id: 'p1',
      nameOfood: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageOfood:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    FoodProduct(
      id: 'p2',
      nameOfood: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageOfood:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    FoodProduct(
      id: 'p3',
      nameOfood: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageOfood:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    FoodProduct(
      id: 'p4',
      nameOfood: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageOfood:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PRODUCTS POINT"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: listOfthemProducts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 4 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => FoodCollection(
            listOfthemProducts[i].description,
            listOfthemProducts[i].id,
            listOfthemProducts[i].imageOfood,
            listOfthemProducts[i].nameOfood),
      ),
    );
  }
}

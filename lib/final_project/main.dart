import 'package:flutter/material.dart';
import '../final_project/screen/food_listview.dart'; // Import the food home page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FoodHomePage(), // Set the home page
    );
  }
}

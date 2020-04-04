import 'package:flutter/material.dart';
import 'package:food_app/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      home: Homepage(),
    );
  }
}
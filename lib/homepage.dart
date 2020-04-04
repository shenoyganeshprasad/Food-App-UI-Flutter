import 'package:flutter/material.dart';
import 'package:food_app/widgets/foodContainer.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141414),
      appBar: AppBar(
        backgroundColor: Color(0xFF141414),
        elevation: 0.0,
        actions: <Widget>[
          Icon(Icons.search),
          SizedBox(width: 20.0),
          Icon(Icons.person_outline),
          SizedBox(width: 20.0),
          Icon(Icons.bookmark_border),
          SizedBox(width: 20.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'BURGER HOUSE',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: <Widget>[
                  FoodContainer(imagePath: 'assets/1.png', name: 'Burger Combo', price: '\$11.99'),
                  SizedBox(width: 20.0),
                  FoodContainer(imagePath: 'assets/2.png',name: 'Chicken Burger', price: '\$9.99'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: <Widget>[
                  FoodContainer(imagePath: 'assets/3.png', name: 'Classic Burger', price: '\$12.99'),
                  SizedBox(width: 20.0),
                  FoodContainer(imagePath: 'assets/4.png',name: 'Double Burger', price: '\$20.99'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BurgerScreen extends StatelessWidget {
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
              '12.99 \$',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 14,
                  color: Colors.amber,
                  // fontWeight: FontWeight.w200,
                ),
              ),
              // textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Text(
                      'BURGER',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // textAlign: TextAlign.center,
                    ),
                    Image(
                      image: AssetImage('assets/burger.png'),
                      width: 250.0,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Our Classic Burger',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 28.0,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[500],
                        offset: Offset(0.0, 1.5),
                        blurRadius: 1.5,
                      ),
                    ],
                    gradient: LinearGradient(
                        colors: [Color(0xFFF4B326), Color(0xFFF29428)]),
                  ),
                  child: Text(
                    'ORDER NOW',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

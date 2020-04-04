import 'package:flutter/material.dart';

class FoodContainer extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;

  FoodContainer({this.imagePath, this.name, this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(imagePath)),
          SizedBox(height: 10.0),
          Text(name, style: TextStyle(color: Colors.white, fontSize: 18.0,),),
          SizedBox(height: 10.0),
          Text(price ,style: TextStyle(color: Colors.white, fontSize: 18.0,),),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
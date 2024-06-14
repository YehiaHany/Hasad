import 'package:flutter/material.dart';

class PhotoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          Container(
            width: 550,
            height: 700,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/yucca.png"),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

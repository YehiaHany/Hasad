import 'package:flutter/material.dart';

class PhotoScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 550,
        height: 700,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/monstera.png"),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}

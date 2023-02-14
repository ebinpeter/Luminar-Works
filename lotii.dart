import 'package:flutter/material.dart';

class Lot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:
            BoxDecoration(gradient: LinearGradient(begin: Alignment.centerLeft,
            end: Alignment.bottomCenter,
            colors: [Colors.deepOrange,Colors.white,Colors.black]),
      ),
    )
    );
  }
}

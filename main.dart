import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/loging.dart';
import 'package:flutter_application_2/lotii.dart';
import 'package:flutter_application_2/tabb.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Screen(),
  ));
}

class Screen extends StatefulWidget {
  @override
  State<Screen> createState() => _SreenState();
}

class _SreenState extends State<Screen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => lgnpage()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("https://images.unsplash.com/photo-1553095066-5014bc7b7f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2FsbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              //Image(image: AssetImage("assets/icons/icon Fb.png"))
            ],
          ),
        ),
      ),
    );
  }
}
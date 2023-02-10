import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/gridwthstack.dart';
import 'package:flutter_application_1/stack.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_application_1/standegrdview.dart';



void main() {
  runApp(DevicePreview(builder: ((context) => MaterialApp(home: Screen(),
  useInheritedMediaQuery: true,
  locale: DevicePreview.locale(context),
  builder: DevicePreview.appBuilder))));
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
          .pushReplacement(MaterialPageRoute(builder: (context) => standeredview()));
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
                image: AssetImage(""))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(image: AssetImage(""))
            ],
          ),
        ),
      ),
    );
  }}
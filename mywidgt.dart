import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mygdt extends StatelessWidget{
final Color? bqcolor;
final IconData icons;
VoidCallback? onpress;
String? label;

mygdt({
  this.bqcolor = Colors.black,
  required this.icons,
  this .onpress,
  this.label='hello',


});
@override
  Widget build(BuildContext context) {
    return Card(
        color: bqcolor,
        child: ListTile(
          title: Text(label!),
          leading: Icon(icons),
          onTap: onpress,
        ),
    );
  }

}
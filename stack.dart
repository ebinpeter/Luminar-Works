import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class strt extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Stack(children: [
        Container(color: Colors.blue,width: 300,height: 500,),
        Container(color: Colors.amber,width: 100,height: 200,),
        Positioned(left: 20,right:20 ,child: Container(color:Colors.green,width: 100,height: 100,)),
      ],),),
    );
  }

}
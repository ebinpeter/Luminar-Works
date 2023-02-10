import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gerd extends StatelessWidget{
  @override
  var imag=["https://cdn.shopify.com/s/files/1/0621/8183/4968/products/492405470_17_grande.jpg?v=1646996188",];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SHRINE",style: TextStyle(fontWeight: FontWeight.bold),),leading: Icon(Icons.menu,),actions: [
        Icon(Icons.filter_list)
      ],),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,), itemBuilder: (context,index){
        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Container(
             // decoration:BoxDecoration(child:Image(image: NetworkImage(""),)),

            )],
          ),
        );
      }),
    );
  }

}
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: ((context) => MaterialApp(home: Sliver(),
  useInheritedMediaQuery: true,
  locale: DevicePreview.locale(context),
  builder: DevicePreview.appBuilder))));
} 
class Sliver extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          title: Text("Sliver appbar"),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon( Icons.favorite))
          ],bottom: AppBar(title: Container(child: TextField(decoration: InputDecoration
          (hintText: "Search here,"
          ,prefixIcon: Icon(Icons.search),suffixIcon: 
          Icon(Icons.camera)),),)),
        ),SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          return Container(
            height: 300,
            child: Center(
              child: Text("Inside Sliver $index",
              style:  TextStyle(fontSize: 30),),
            ),
          );
        },childCount: 10,
        ))
      ],),
    );

  }
  
}
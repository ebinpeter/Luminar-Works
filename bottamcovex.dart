import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Bottombr(),
        theme: ThemeData(
            colorScheme:
                ColorScheme.fromSwatch().copyWith(primary: Color(0xff128C7E))),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Bottombr extends StatefulWidget {
  @override
  State<Bottombr> createState() => _BottombrState();
}

class _BottombrState extends State<Bottombr> {
  List move = [
    Center(child:Text("one")),
    Center(child: Image(image: NetworkImage('')),),
    Center(child: Image(image: NetworkImage('')),),
    Center(child: Image(image: NetworkImage("")),),
    Center(child: Image(image: NetworkImage("")),)
  ];
  int index=4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ConvexAppBar(
      items: [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.map, title: 'Discovery'),
        TabItem(icon: Icons.add, title: 'Add'),
        TabItem(icon: Icons.message, title: 'Message'),
        TabItem(icon: Icons.people, title: 'Profile'),
      ],
      onTap: (int i) => print('click index=$i'),
    ),body: move[index],
    );
  }
}


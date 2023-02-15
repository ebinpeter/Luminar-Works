import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottmBar(),
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

class BottmBar extends StatefulWidget {
  @override
  State<BottmBar> createState() => _BottmBarState();
}

class _BottmBarState extends State<BottmBar> {
  List Screen = [
    Center(
      child: Text("home"),
    ),
    Center(
      child: Text("Account"),
    ),
    Center(
      child: Text("menu"),
    ),
  ];

  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (taped_index) {
          setState(() {
            index = taped_index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_sharp), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded), label: "menu"),
        ],
      ),body: Screen[index] ,
    );
  }
}

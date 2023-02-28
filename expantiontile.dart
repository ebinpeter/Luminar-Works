import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Expantion(),
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

class Expantion extends StatelessWidget {
 
  List colors = [Colors.amber, Colors.accents, Colors.black, Colors.blue];
  var data =["amber","accents","black","blue"];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExpansionTile(
          title: Text("Colors"),
          children:List.generate(4, (index) => ListTile(
            leading: CircleAvatar(
              backgroundColor: colors[index],),
            title: Text(data[index]),
          ))
          
    ),
    );
  }
}

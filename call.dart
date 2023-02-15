import 'package:flutter/material.dart';

class Cal extends StatelessWidget {
  var nsm = ["ebin", "amala", "angle", "vimal", "koos"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: nsm.length,
          itemBuilder: (context, Index) {
            return ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage("url")),
              title: Text(nsm[Index]),
               subtitle: Text(""),
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';

class Cal extends StatelessWidget {
  var nsm = ["ebin", "amala", "angle", "vimal", "koos"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z2lybCUyMGltYWdlc3xlbnwwfHwwfHw%3D&w=1000&q=80"),)
          ],
        )
      ],)
    );
  }
}

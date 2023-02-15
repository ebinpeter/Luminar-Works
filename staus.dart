import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stus extends StatelessWidget {
  var pis = [
    "https://images.unsplash.com/photo-1675328336741-e8c6d8891948?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE1fHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1674668455022-68ef10757f41?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ5fHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1674327966586-84be953b3490?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDk5fHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1658731389324-2cefff465798?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE3N3x4SHhZVE1ITGdPY3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1672828660910-3e6f3ab4a249?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMyNHx4SHhZVE1ITGdPY3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1671897179660-310356817eb3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQyMXx4SHhZVE1ITGdPY3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
      "https://images.unsplash.com/photo-1645865675130-12f815af759e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ4MXx4SHhZVE1ITGdPY3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60"
  ];
  var nms = ["Ebin", "Diya", "Anu", "Peter", "Joseph", "Jons", "Rits", "Mary"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1675328336741-e8c6d8891948?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE1fHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
              ),
            ),
            title: Text(
              "My Status",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  color: Colors.black),
            ),
            subtitle: Text(
              "Tap to Add status update",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
        ),
        Text(
          "Resent update",
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
       Card(
         child: ListView.builder(itemCount :7,itemBuilder:(context,Index){
           return ListTile(
             leading: CircleAvatar(backgroundImage: NetworkImage(pis[Index]),)
           );
         } )
         ),

      ],
    ));
  }
}

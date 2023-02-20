import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/condact.dart';

class Stus extends StatelessWidget {
  var time2 = ["1:45 pm", "2:20 pm", "3:45 pm", "5:00 pm"];
  var time1 = ["just now", "10:00 am", "12:12 am"];
  var recent_update = [
    "https://images.unsplash.com/photo-1675328336741-e8c6d8891948?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE1fHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1674668455022-68ef10757f41?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ5fHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1674327966586-84be953b3490?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDk5fHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  ];
  var Viewed_update = [
    "https://images.unsplash.com/photo-1658731389324-2cefff465798?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE3N3x4SHhZVE1ITGdPY3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1672828660910-3e6f3ab4a249?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMyNHx4SHhZVE1ITGdPY3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1671897179660-310356817eb3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQyMXx4SHhZVE1ITGdPY3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1645865675130-12f815af759e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ4MXx4SHhZVE1ITGdPY3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60"
  ];
  var nms1 = ["Ebin", "gopi", "Anu", ];
  var nms2=["Peter", "Joseph", "Jons", "Rits", "Mary"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ListTile(
          leading: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 5),
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1552058544-f2b08422138a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                ),
              ),
              Positioned(
                  top: 28,
                  left: 35,
                  child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.teal,
                      child: Icon(
                        Icons.add,
                        size: 20,
                      ))),
            ],
          ),
          title: Text(
            "My Staus",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          subtitle: Text('Tap to add status'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 30),
          child: SizedBox(
            width: 320,
            child: Text(
              "Recent update",
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        SizedBox(
            height: 375,
            child: ListView.custom(
                childrenDelegate:
                    SliverChildListDelegate(List.generate(3, (index) {
              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.green,
                      child: CircleAvatar(radius: 26,
                        backgroundImage: NetworkImage(recent_update[index]),
                      ),
                    ),
                    title: Text(nms1[index]),
                    subtitle: Text(time1[index]),
                  ),

                ],
              );
            })))),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: SizedBox(height:20,width: 330,
            child: Text("Viewed update",style: TextStyle(fontSize: 13),),
          ),
        )
      ],
    ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cht extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Card(
          child: ListTile(
            leading:CircleAvatar( backgroundImage: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
            ),
            title: Text("Angle",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            subtitle: Row(
              children: [Icon(Icons.check),Text('Hai')],
            ),trailing: Text("2:00 PM"),
          ),
        ),
        Card(
          child: ListTile(
            leading:CircleAvatar( backgroundImage: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
            ),
            title: Text("Yadhu",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            subtitle: Row(
              children: [Icon(Icons.check),Text('Hai')],
            ),trailing: Text("2:00 PM"),
          ),
        ),
        Card(
          child: ListTile(
            leading:CircleAvatar( backgroundImage: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
            ),
            title: Text("Adhersh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            subtitle: Row(
              children: [Icon(Icons.check),Text('Hai')],
            ),trailing: Text("2:00 PM"),
          ),
        ),Card(
          child: ListTile(
            leading:CircleAvatar( backgroundImage: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
            ),
            title: Text("Ebin",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            subtitle: Row(
              children: [Icon(Icons.check),Text('Hai')],
            ),trailing: Text("2:00 PM"),
          ),
        )



        


      ],),
    );
  }
}

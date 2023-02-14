import 'package:flutter/material.dart';

class Msg extends StatelessWidget {
  var img = [
    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1552058544-f2b08422138a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1500048993953-d23a436266cf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
  ];
  var nams = [
    "Ebin",
    "Yedhu",
    "Joel",
    "Albert",
  ];
  var test = ["jdhje",'hello',"why?","oky"];
  var icns = [Icons.done_all, Icons.check, Icons.check, Icons.done_all];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(img[index]),
                ),
                title: Text(nams[index]),
                subtitle: Row(
                  children: [
                    Icon(Icons.check),
                    Text(test[index]),
                  ],
                ),
                trailing: (Icon(icns[index])),
              ),
            );
          }),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class grdstack extends StatelessWidget{
  @override
  var cuntrys=["USA","England","France","Russia","Canada"];
  var imgs=["https://images.unsplash.com/photo-1501594907352-04cda38ebc29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dW5pdGVkJTIwc3RhdGVzfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
  "https://images.unsplash.com/photo-1543799382-9a0208331ef7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZW5nbGFuZHxlbnwwfHwwfHw%3D&w=1000&q=80",
  "https://media.istockphoto.com/id/1133449890/photo/eiffel-tour-and-paris-cityscape.jpg?b=1&s=170667a&w=0&k=20&c=ld2kQE-B39vgSzY5FzRz_oki0B11lEUCTEY4SxsSdLM=",
  "https://media.istockphoto.com/id/621235832/photo/autumn-morning-at-the-cathedral.jpg?b=1&s=170667a&w=0&k=20&c=sLNYq4Axbgv_0z2Lgrpec4U2-UmgXABeQ8a2dHkrEU4=",
  "https://images.unsplash.com/photo-1490623970972-ae8bb3da443e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNhbmFkYXxlbnwwfHwwfHw%3D&w=1000&q=80"];
  Widget build(BuildContext context) {
  return Scaffold(
appBar: AppBar(title: Text("Famous Countrys")),
body: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisSpacing: 2,crossAxisCount: 2),itemCount: 5, itemBuilder: (context,index){
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage(imgs[index]))),
        ),
      )
    ],
  );
}),
  );
  }

}
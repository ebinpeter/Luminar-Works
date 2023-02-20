import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: ((context) => MaterialApp(home: farmer(),
  useInheritedMediaQuery: true,
  locale: DevicePreview.locale(context),
  builder: DevicePreview.appBuilder))));
} 
class farmer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(items: [
        Container(decoration: BoxDecoration(image:DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1501594907352-04cda38ebc29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dW5pdGVkJTIwc3RhdGVzfGVufDB8fDB8fA%3D%3D&w=1000&q=80"))),),
          Container(
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1543799382-9a0208331ef7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZW5nbGFuZHxlbnwwfHwwfHw%3D&w=1000&q=80"))),
          ),
          Container(decoration: BoxDecoration(image:DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1133449890/photo/eiffel-tour-and-paris-cityscape.jpg?b=1&s=170667a&w=0&k=20&c=ld2kQE-B39vgSzY5FzRz_oki0B11lEUCTEY4SxsSdLM="))),
          ),
           Container(
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/621235832/photo/autumn-morning-at-the-cathedral.jpg?b=1&s=170667a&w=0&k=20&c=sLNYq4Axbgv_0z2Lgrpec4U2-UmgXABeQ8a2dHkrEU4="))),
          ),
           Container(
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1490623970972-ae8bb3da443e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNhbmFkYXxlbnwwfHwwfHw%3D&w=1000&q=80"))),
          )

      ],
      
       options: CarouselOptions(
      height: 400,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
      
      scrollDirection: Axis.horizontal,
   ),),
    );
  }

}
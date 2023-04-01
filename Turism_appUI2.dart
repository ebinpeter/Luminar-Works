import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: turism(),
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(primary: const Color(0xff128C7E))),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class turism extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 10),
          child: Stack(
            children: [
              const Text(
                'Most Furious place & Peacefull\n natural place',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 300),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://media.istockphoto.com/id/153006184/photo/maldives-villa-piles-on-water.jpg?b=1&s=170667a&w=0&k=20&c=rMYkdFOcnC8b-FUxu1HrzuwJtduW7ndBtQCbVwCp7dg="),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    RatingBar.builder(
                      itemSize: 18,
                      initialRating: 3.5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("4.7 Rating")
                  ],
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 200),
          child: Text(
            "About Place",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: const Text(
              """Based South of the Indian subcontinent, the archipelago of the Maldives is a stunning chain of pearl like islands scattered in the Indian Ocean. Nothing can entirely set you up for the magnificence of The Maldives. This dazzling destination is a honeymooner's fantasy however you don't need to be hitched to welcome its magnificence. It's likewise an incredible spot for families and couples to search out winter sun or just have a break from their monotonous life. So you won’t feel extrinsic if you don’t have a significant other to travel with."""),
        ),
        const SizedBox(height: 20,)
        ,const Padding(
          padding: EdgeInsets.only(right: 150),
          child: Text(
            "Special facilities",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        const SizedBox(height: 20,),
        Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: const Icon(Icons.local_parking_rounded,color: Colors.blue,),
          ),Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Parking",style: TextStyle(color: Colors.blue),),
          ),
          SizedBox(width: 20,),
          Icon(Icons.phone_in_talk_sharp,color: Colors.blue,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("24x7 Support",style: TextStyle(color: Colors.blue),),
          ),
          SizedBox(width: 20,),
          Icon(Icons.wifi,color: Colors.blue,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(" Free Wifi",style: TextStyle(color: Colors.blue),),
          )
        ],)
      ]),
    );
  }
}

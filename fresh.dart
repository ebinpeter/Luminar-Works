import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Fresh(),
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

class Fresh extends StatelessWidget {
  var items = [
    "VEGETABLE",
    "FRUITS",
    "EXOTIC",
    "FRESH CUTS",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: false,
            floating: true,
            pinned: true,
            title: Text("Framers Fresh Zone"),
            actions: [
              Row(
                children: [
                  Icon(Icons.location_pin),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 5,
                      left: 5,
                    ),
                    child: Text("Kochi"),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded),
                ],
              )
            ],
            bottom: AppBar(
                title: Container(
              child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search here", prefixIcon: Icon(Icons.search))),
              color: Colors.white,
            )),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        border: Border.all(
                          color: Colors.green,
                        ),
                        borderRadius: BorderRadius.circular(40)),
                    width: 90,
                    height: 25,
                    child: Center(
                      child: Text(
                        items[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green),
                      ),
                    ),
                  );
                }),
              )
            ]),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(height:200,
            width: 50,
              child: Container(
                child: Image(
                    image: NetworkImage(
                        "https://media.istockphoto.com/id/1371318211/photo/groceries-shopping-flat-lay-of-fruits-vegetables-greens-bread-and-oil-in-eco-friendly-bags.jpg?b=1&s=170667a&w=0&k=20&c=LwOTGwEKL2hSwCgIpWKoYWmFBxqwQCLJMtDVRu4I-ys=")),
              ),
            )
          ]))
        ],
      ),
    );
  }
}

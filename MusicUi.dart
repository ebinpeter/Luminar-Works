import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Music(),
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

class Music extends StatelessWidget {
  var pic = [
    "https://external-preview.redd.it/excited-to-share-this-dance-music-playlist-playlist-which-i-v0-F7F5YX9Lg6fi1SBBBfGbJ1FS5VuCl4SZx5PD6Fz_LqQ.jpg?width=640&crop=smart&auto=webp&s=29646ce5ac85bdce0bf4837d42cdf8957e0c5b21",
    "https://i.scdn.co/image/ab67616d0000b2738be7a1defeb06a50f920e0df",
    "https://c.saavncdn.com/editorial/BestIndianLoFiHits_20220218042449.jpg",
    "https://i.scdn.co/image/ab67706c0000da84d912238f769a8717fd6531a8",
    "https://external-preview.redd.it/hGVUoTliMCcl0a7SBvznhVYV-Wk-8RSGPGkD4_5-sNs.jpg?auto=webp&s=5b68dd8553847c6b799d650394ad13eeb84d3130",
    "https://i.scdn.co/image/ab67616d0000b2730dfbc9b1b61097ebe0daf236",
    "https://i.scdn.co/image/ab67706f0000000296b610a601fecd829a30d55d"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40,left:110),
                  child: Center(
                    child: Text(
                      "Playlists",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 40,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children:[ Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 350,
                      color: Colors.grey,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search query',
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(height:800,
                    child: GridView.builder(
                        primary:false,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20), itemCount: pic.length,
                        itemBuilder: (buildcontext, index) {
                          return Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: NetworkImage(
                                      pic[index]), fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(30)),

                            ),
                          );
                        }),
                  ),
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}

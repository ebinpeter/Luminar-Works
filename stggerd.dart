import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class stdview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 2,
                child: Card(
                  child: ListTile(
                    leading: Image(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1428366890462-dd4baecf492b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZW1waXJlJTIwc3RhdGUlMjBidWlsZGluZ3xlbnwwfHwwfHw%3D&w=1000&q=80"),
                    fit: BoxFit.fill,),
                    title: Text("19 Jun 2013"),
                    subtitle: Text("Ernest HemingWay"),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 2,
                child: Card(
                  child: ListTile(
                    leading: Image(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1610296669228-602fa827fc1f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHVuaXZlcnNlfGVufDB8fDB8fA%3D%3D&w=1000&q=80")),
                    title: Text("20 Jun 2013"),
                    subtitle: Text("Carl Sagan"),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

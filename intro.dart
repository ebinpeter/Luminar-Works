import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/loging.dart';
import 'package:flutter_application_2/msg.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Introsli(),
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

class Introsli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.green,
      pages: [
        PageViewModel(
          title: "First page",
          body:
              """Introduction Screen allows you to have a screen on an app's first launch to, 
          for example, explain your app. This widget is very customizable with a great design.""",
          image: Introimage(
              "https://media.istockphoto.com/id/1459308712/photo/ho-chi-minh-city-vietnam-16-oct-2022-low-angle-view-of-landmark-81-and-other-high-apartment.jpg?b=1&s=170667a&w=0&k=20&c=rdqkZIxj3-wkgLaRCdLkJgRTvX5sJkxN6QMft1JFnrw="),
        ),
        PageViewModel(
          title: "First page",
          body:
              """Introduction Screen allows you to have a screen on an app's first launch to, 
          for example, explain your app. This widget is very customizable with a great design.""",
          image: Introimage(
              "https://images.unsplash.com/photo-1611363279614-89f3ebe4cb5b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVpZGxpbmdzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
        ),
        PageViewModel(
          title: "First page",
          body:
              """Introduction Screen allows you to have a screen on an app's first launch to, 
          for example, explain your app. This widget is very customizable with a great design.""",
          image: Introimage(
              "https://media.istockphoto.com/id/1459308709/photo/ho-chi-minh-city-vietnam-16-oct-2022-low-angle-view-of-landmark-81-and-other-high-apartment.jpg?b=1&s=170667a&w=0&k=20&c=96W4JJimUgVjSP29Cq25Y6uENAu_rKZ8axHPsD7hWqY="),
        ),
      ],
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => lgnpage())),
      onSkip: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Msg())),
      showSkipButton: true,
      done: Text("Continue to home"),
      skip: Text("Skip"),
      next: Icon(Icons.navigate_next),
    );
  }
}

Widget Introimage(String image) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Image.network(
      image,
      width: 350,
    ),
  );
}

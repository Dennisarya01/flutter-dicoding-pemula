import 'package:fasteairplane/ui/pages/detail_information_page.dart';
import 'package:fasteairplane/ui/pages/home_page.dart';
import 'package:fasteairplane/ui/pages/search_page.dart';
import 'package:fasteairplane/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/home-page': (context) => HomePage(),
        '/detail-information': (context) => DetailInformation(),
        '/search-page': (context) => SearchPage()
      },
    );
  }
}


import 'package:flutter/material.dart';
import './pages/gallery_page.dart';
import './pages/photos_page.dart';
import './pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      initialRoute: '/homepage',
      routes: {
        Homepage.nameRoute: (context) => Homepage(),
        GalleryPage.nameRoute: (context) => GalleryPage(),
        PhotoPage.nameRoute: (context) => PhotoPage(),
      },
    );
  }
}

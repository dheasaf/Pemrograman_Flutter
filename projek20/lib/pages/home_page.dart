import 'package:flutter/material.dart';
import 'package:projek20/pages/gallery_page.dart';

class Homepage extends StatelessWidget {
  static const nameRoute = '/homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Home Page ",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(GalleryPage.nameRoute);
        },
        child: Icon(Icons.arrow_right_alt),
      ),
    );
  }
}

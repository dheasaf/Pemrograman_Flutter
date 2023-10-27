import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  static const nameRoute = '/photo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Photo Page ",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}

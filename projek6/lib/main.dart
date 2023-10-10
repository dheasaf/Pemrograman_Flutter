import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Widget"),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.orange,
            child: Image(
              fit: BoxFit.contain,
              image: AssetImage("images/image.jpeg"),
              // image: NetworkImage("https://picsum.photos/id/237/200/300"),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible dan Expanded"),
      ),
      body: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 10,
            child: Container(
              height: 100,
              color: Colors.green,
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              height: 100,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}

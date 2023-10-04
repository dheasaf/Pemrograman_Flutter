import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> mycolor = [
    Colors.deepOrange,
    Colors.blueGrey,
    Colors.green,
    Colors.amber
  ];
 final List <Widget> mylist = List.generate(
          100,
          (index) => Text(
            "${index + 1}",
            style: TextStyle(
              fontSize: 20 + double.parse(index.toString()),
            ),
          ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView(
          children: mylist,
        ),
      ),
    );
  }
}

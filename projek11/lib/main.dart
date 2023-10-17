import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            color: Colors.brown,
          ),
          leadingWidth: 100,
          title: Container(
            // width: 35,
            height: 35,
            color: Colors.yellowAccent,
          ),
          // titleSpacing: 0,
          centerTitle: false,
          actions: [
            Container(
              width: 50,
              // height: 35,
              color: Colors.cyan,
            ),
            Container(
              width: 50,
              // height: 35,
              color: Colors.cyan,
            ),
            Container(
              width: 50,
              // height: 35,
              color: Colors.indigo,
            ),
            Container(
              width: 50,
              // height: 35,
              color: Colors.green,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Container(
              width: 50,
              height: 200,
              color: Colors.green,
            ),
          ),
          flexibleSpace: Container(
            // width: 50,
            height: 200,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("column"),
          ),
        body: Stack(

          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.cyanAccent,
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.blueGrey,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.deepOrange,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

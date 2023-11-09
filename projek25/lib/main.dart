import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      title: Text("Media Query"),
    );
    final bodyheight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bool islandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: myAppBar,
      body: Center(
        child: (islandscape)
            ? Column(
                children: [
                  Container(
                    height: mediaQueryHeight * 0.5,
                    width: mediaQueryWidth,
                    color: Colors.blueGrey,
                  ),
                  Container(
                    height: mediaQueryHeight * 0.5,
                    color: Colors.amber,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return GridTile(
                            child: Container(
                          color: Color.fromARGB(255, Random().nextInt(156),
                              Random().nextInt(156), Random().nextInt(156)),
                        ));
                      },
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  Container(
                    height: mediaQueryHeight * 0.3,
                    width: mediaQueryWidth,
                    color: Colors.blueGrey,
                  ),
                  Container(
                    height: mediaQueryHeight * 0.7,
                    color: Colors.amber,
                    child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(),
                          title: Text("Halo Semua"),
                        );
                      },
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
